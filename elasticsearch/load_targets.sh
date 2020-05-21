#!/bin/bash

#cat "$1" | elasticsearch_loader --es-host "http://localhost:9200" --index-settings-file "index_settings.json" --bulk-size 5000 --index targets --type target --id-field id json --json-lines -
export INDEX_SETTINGS="index_settings.json"
export RELEASE='20.04_'
export INDEX_NAME="target"
export TYPE_FIELD="target"
#export INPUT="../out/targets"
export INPUT="gs://ot-snapshots/etl/latest/targets"
export ES="http://localhost:9200"
export ID="id"

./load_jsons.sh
