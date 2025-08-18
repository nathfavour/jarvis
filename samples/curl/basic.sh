#!/bin/bash
curl -X POST "https://models.inference.ai.azure.com/chat/completions" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    -d '{
        "messages": [
            {
                "role": "system",
                "content": "You are a helpful assistant."
            },
            {
                "role": "user",
                "content": "reply only with a very concise but informative commit message, and nothing else:"
            }
        ],
        "model": "openai/gpt-4.1"
    }'
