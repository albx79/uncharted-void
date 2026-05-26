from dotenv import load_dotenv
from huggingface_hub import InferenceClient
from dataclasses import dataclass
import os
import csv
import yaml
import time

@dataclass
class CardPrompt:
    name: str
    prompt: str
    layout: str
    filename: str

load_dotenv()

# --- CONFIGURATION ---
TOKEN = os.getenv("API_TOKEN")
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "data/img")
MODEL = os.getenv("MODEL", "stabilityai/stable-diffusion-xl-base-1.0")
WIDTH = int(os.getenv("WIDTH", 512))
HEIGHT = int(os.getenv("HEIGHT", 768))
STYLE_SUFFIX = os.getenv(
    "STYLE_SUFFIX",
    "\nTraditional gouache painting, clean linework, warm amber tones, "
    "dramatic side lighting, retro sci-fi illustration"
)

type_orientations = {}
with open("data/types.csv", mode="r") as file:
    reader = csv.DictReader(file, delimiter=";", quotechar='"')
    for row in reader:
        type_orientations[row["type"]] = row["layout"]

print(f"Orientations:\n{type_orientations}")

#--- LOAD TYPE DESCRIPTIONS ---
type_descriptions = {}
for type in type_orientations.keys():
    print(f"processing {type}")
    with open(f"data/{type}-descriptions.csv", mode="r") as file:
        reader = csv.DictReader(file, delimiter=";", quotechar='"')
        desc_for_type = type_descriptions.get(type, {})
        for row in reader:
            desc_for_type[row["subtype"]] = row["description"]
        type_descriptions[type] = desc_for_type

print(f"Type descriptions: {type_descriptions}")

#--- READ CARDS AND GENERATE PROMPTS ---
prompts = []
with open("data/cards.csv", mode="r", encoding="utf-8") as file:
    reader = csv.DictReader(file, delimiter=";", quotechar='"')
    for row in reader:
        name = row["name"]
        subtypes = yaml.safe_load(row.get("subtypes", "[]")) or []
        type = row["type"]
        print(f"Generating prompt for {type} {name} - {subtypes}")
        descriptions = [type_descriptions[type].get(t, t) for t in subtypes]
        prompts.append(CardPrompt(
            name=name, 
            prompt=f"{name}, {', '.join(descriptions)}, {STYLE_SUFFIX}", 
            layout=type_orientations[type],
            filename=f"{OUTPUT_DIR}/{name}.png"
        ))

# --- GENERATE IMAGES ---
os.makedirs(OUTPUT_DIR, exist_ok=True)  # Create output directory
client = InferenceClient(token=TOKEN, model=MODEL)
for i, card in enumerate(prompts):
    if os.path.exists(card.filename):
        print(f"Skipping {card.name} — already exists")
        continue
        
    print(f"Generating image {i+1}/{len(prompts)}: {card}...")

    # Generate image
    image = client.text_to_image(
        prompt=card.prompt,
        width=WIDTH if card.layout == "Portrait" else HEIGHT,
        height=HEIGHT if card.layout == "Portrait" else WIDTH,
    )

    # Save image
    
    image.save(card.filename)
    print(f"Saved: {card.filename}")
    print("Sleeping for 10 seconds before generating next image...")
    time.sleep(10)

print("Done! All images generated.")
