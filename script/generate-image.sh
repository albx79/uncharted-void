#!/bin/bash

# Hugging Face API settings
API_URL="https://api-inference.huggingface.co/models/runwayml/stable-diffusion-v1-5"
OUTPUT_DIR="data/img"                  # Directory to save images
WIDTH=512                            # Image width
HEIGHT=768                           # Image height
STEPS=30                             # Inference steps (lower = faster)

if -z 

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

PROMPT="${PROMPTS[$i]}"

echo "Generating image $((i+1)): $PROMPT"

# Call Hugging Face API
RESPONSE=$(curl -s -X POST "$API_URL" \
-H "Authorization: Bearer $API_TOKEN" \
-H "Content-Type: application/json" \
-d '{
    "inputs": "'"$PROMPT"'",
    "parameters": {
    "width": '"$WIDTH"',
    "height": '"$HEIGHT"',
    "num_inference_steps": '"$STEPS"'
    }
}')

# Check for errors
if echo "$RESPONSE" | grep -q "error"; then
echo "Error: $RESPONSE"
continue
fi

# Extract base64 image data and decode to PNG
echo "$RESPONSE" | jq -r '.[0]' | base64 --decode > "$OUTPUT_DIR/$SAFE_PROMPT.png"

echo "Saved to $OUTPUT_DIR/$SAFE_PROMPT.png"
sleep 5  # Rate limiting: 1 request every 5 seconds
