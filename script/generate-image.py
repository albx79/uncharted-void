from dotenvx import load_dotenvx
from huggingface_hub import InferenceClient
import os
import csv
import yaml
import time

load_dotenvx()

# --- CONFIGURATION ---
TOKEN = os.getenv("API_TOKEN")
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "../data/img")
MODEL = os.getenv("MODEL", "stabilityai/stable-diffusion-xl-base-1.0")
WIDTH = int(os.getenv("WIDTH", 512))
HEIGHT = int(os.getenv("HEIGHT", 768))

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
        prompt = f"{name}, {', '.join(descriptions)}, traditional gouache painting with clean linework"
        prompts.append((name, prompt, type_orientations[type]))

# --- GENERATE IMAGES ---
os.makedirs(OUTPUT_DIR, exist_ok=True)  # Create output directory
client = InferenceClient(token=TOKEN, model=MODEL)
for i, prompt in enumerate(prompts):
    print(f"Generating image {i+1}/{len(prompts)}: {prompt}...")

    # Generate image
    image = client.text_to_image(
        prompt=prompt[1],
        width=WIDTH if prompt[2] == "Portrait" else HEIGHT,
        height=HEIGHT if prompt[2] == "Portrait" else WIDTH,
    )

    # Save image
    filename = f"{OUTPUT_DIR}/{prompt[0]}.png"
    image.save(filename)
    print(f"Saved: {filename}")
    print("Sleeping for 5 seconds before generating next image...")
    time.sleep(10)

print("Done! All images generated.")
