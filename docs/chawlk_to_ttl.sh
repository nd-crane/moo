#!/usr/bin/env bash
# Quick Bash command line script to call the chwolk(https://chowlk.linkeddata.es/index.html) API (https://app.chowlk.linkeddata.es/api)
# To convert a drawio document to TTL

# Script uses jq (https://stedolan.github.io/jq/) to process the json response
# If jq is not in path, the script will exit. To install via homebrew brew install jq

# Quick hack to make sure at least input and output files are there...
if [ "$#" -ne 2 ]; then
    echo "You must enter exactly 2 command line arguments"
    exit
fi

if ! [ -x "$(command -v jq)" ]; then
  echo 'Error: jq is not installed.' >&2
  exit 1
fi
# Make sure the drawio file exists before calling curl...
if [ -f "$1" ]; then
    echo "Converting ${1}"
    curl -F data=@${1} https://app.chowlk.linkeddata.es/api | jq -r .ttl_data > $2
else
    echo "Drawio input file not found" >&2
    exit 1
fi

