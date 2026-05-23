from dotenvx import load_dotenv
from huggingface_hub import InferenceClient
import os

# --- CONFIGURATION ---
OUTPUT_DIR = "generated_images"  # Directory to save images
MODEL = "stabilityai/stable-diffusion-xl-base-1.0"  # Model ID (XL for better quality)
TOKEN = "YOUR_HUGGINGFACE_TOKEN"  # Replace with your token from https://huggingface.co/settings/tokens
WIDTH = 512  # Image width (max 1024 for free tier)
HEIGHT = 768  # Image height (max 1024 for free tier)

load_dotenv()

# List of prompts (replace with your card texts)
PROMPTS = [
    "a futuristic spaceship, sci-fi, low quality, simple background",
    "a diplomatic alien envoy, portrait, low quality, flat colors",
    "a cyberpunk cityscape, neon lights, low quality, minimal detail",
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
