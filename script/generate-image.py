from dotenvx import load_dotenvx
from huggingface_hub import InferenceClient
import os

load_dotenvx()

# --- CONFIGURATION ---
TOKEN = os.getenv("API_TOKEN")
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "../data/img")
MODEL = os.getenv("MODEL", "stabilityai/stable-diffusion-xl-base-1.0")
WIDTH = int(os.getenv("WIDTH", 512))
HEIGHT = int(os.getenv("HEIGHT", 768))

# List of prompts (replace with your card texts)
PROMPTS = [
    "a diplomatic alien envoy, portrait, low quality, flat colors",
]

# --- SETUP ---
os.makedirs(OUTPUT_DIR, exist_ok=True)  # Create output directory
client = InferenceClient(token=TOKEN, model=MODEL)

# --- GENERATE IMAGES ---
for i, prompt in enumerate(PROMPTS):
    print(f"Generating image {i+1}/{len(PROMPTS)}: {prompt[:50]}...")

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

print("Done! All images generated.")
