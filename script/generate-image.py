from dotenvx import load_dotenvx
from huggingface_hub import InferenceClient
import os
import csv

load_dotenvx()

# --- CONFIGURATION ---
TOKEN = os.getenv("API_TOKEN")
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "../data/img")
MODEL = os.getenv("MODEL", "stabilityai/stable-diffusion-xl-base-1.0")
WIDTH = int(os.getenv("WIDTH", 512))
HEIGHT = int(os.getenv("HEIGHT", 768))

#--- LOAD TYPE DESCRIPTIONS ---
type_descriptions = {}
with open("data/species.csv", mode="r") as file:
    reader = csv.DictReader(file, delimiter=";", quotechar='"')
    for row in reader:
        type_descriptions[row["subtype"]] = row["description"]

#--- READ CARDS AND GENERATE PROMPTS ---
prompts = []
with open("data/cards.csv", mode="r", encoding="utf-8") as file:
    reader = csv.DictReader(file, delimiter=";", quotechar='"')
    for row in reader:
        name = row["name"]
        subtypes = row["subtypes"].removeprefix("[").removesuffix("]").split(",") if row["subtypes"] else []
        descriptions = [type_descriptions.get(t.removeprefix(" ").removesuffix(" "), "") for t in subtypes]
        prompt = f"{name}, {', '.join(descriptions)}, traditional gouache with clean linework"
        prompts.append(prompt)

# --- GENERATE IMAGES ---
os.makedirs(OUTPUT_DIR, exist_ok=True)  # Create output directory
client = InferenceClient(token=TOKEN, model=MODEL)
for i, prompt in enumerate(prompts):
    print(f"Generating image {i+1}/{len(prompts)}: {prompt}...")

    # Generate image
    image = client.text_to_image(
        prompt=prompt,
        width=WIDTH,
        height=HEIGHT,
    )

    # Save image
    filename = f"{OUTPUT_DIR}/card_{i}.png"
    image.save(filename)
    print(f"Saved: {filename}")
    break

print("Done! All images generated.")
