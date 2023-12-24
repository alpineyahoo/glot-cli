#!/usr/bin/env bash

# The input to `read` is set into $REPLY variable
prompt_lang=$(gum filter $(curl -s -X GET --url "https://glot.io/api/run" | jq -r '.[] | .name'))
read -p "$prompt_lang > "
echo "You typed $REPLY"
