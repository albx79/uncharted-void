#!/bin/bash

# Hugging Face API settings
API_URL="https://router.huggingface.co/models/runwayml/stable-diffusion-v1-5"
OUTPUT_DIR="data/img"                  # Directory to save images
WIDTH=512                            # Image width
HEIGHT=768                           # Image height
STEPS=30                             # Inference steps (lower = faster)

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

PROMPT="Gnome Worker is a small humanoid with no hair and thick, wrinkled brown skin. In the background, the interior of a cave with mining robots all around"

echo "Generating image"

http post "$API_URL" \
    -A bearer \
    -a "$API_TOKEN" \
    inputs="$PROMPT" \
    parameters.width=$WIDTH \
    parameters.height=$HEIGHT

# Call Hugging Face API
# RESPONSE=$(curl -s -X POST "$API_URL" \
# -H "Authorization: Bearer $API_TOKEN" \
# -H "Content-Type: application/json" \
# -d '{
#     "inputs": "'"$PROMPT"'",
#     "parameters": {
#     "width": '"$WIDTH"',
#     "height": '"$HEIGHT"',
#     "num_inference_steps": '"$STEPS"'
#     }
# }')

echo "$RESPONSE"

# Check for errors
if echo "$RESPONSE" | grep -q "error"; then
echo "Error: $RESPONSE"
continue
fi

# Extract base64 image data and decode to PNG
echo "$RESPONSE" | jq -r '.[0]' | base64 --decode > "$OUTPUT_DIR/Gnome Worker.png"

echo done