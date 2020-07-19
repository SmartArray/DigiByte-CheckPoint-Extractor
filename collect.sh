#!/bin/sh

BASE_URL="https://digiexplorer.info/api"
BLOCK_HEIGHT_INTERVAL=50000
BLOCK_HEIGHT_START=0

function getJsonVal () { 
    python -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)['$1']))"; 
}

CURRENT_BLOCK_HEIGHT=$(curl -s "${BASE_URL}/sync" | getJsonVal "blockChainHeight")

for i in `seq -f '%1.0f' $BLOCK_HEIGHT_START $BLOCK_HEIGHT_INTERVAL $CURRENT_BLOCK_HEIGHT`
do
	hash=$(curl -s "${BASE_URL}/block-index/${i}" | getJsonVal "blockHash" | tr -d '"')
	echo "$i\t${hash}"
done