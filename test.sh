#!/usr/bin/env bash

# The input to `read` is set into $REPLY variable
repl_lang=$(gum filter $(curl -s -X GET --url "https://glot.io/api/run" | jq -r '.[] | .name'))
read -p "$repl_lang > "
echo "You typed $REPLY"
