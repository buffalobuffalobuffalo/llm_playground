#!/bin/bash
curl -X POST \
     --url https://api.perplexity.ai/chat/completions \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --header "Authorization: Bearer ${PERPLEXITY_API_KEY}" \
     --data '{
	"model": "mistral-7b-instruct",
  "stream": false,
  "max_tokens": 1024,
  "frequency_penalty": 1,
  "temperature": 0.0,
  "messages": [
		{
			"role": "system",
			"content": "Be precise and concise in your responses."
		},
		{
			"role": "user",
			"content": "How many stars are there in our galaxy?"
		}
	]
}'
