#!/usr/bin/env bash
cd "$(dirname "$(readlink -f "$0")")"
source config
curl -s -X POST -H "$TOKEN" -H "$HEADER" -d '{"files": [{"name": "main.py", "content": "print(42)"}]}' \
     --url 'https://glot.io/api/run/python/latest' | /usr/local/bin/jq

# zsh example.sh
# {
#   "stdout": "42\n",
#   "error": "",
#   "stderr": ""
# }
