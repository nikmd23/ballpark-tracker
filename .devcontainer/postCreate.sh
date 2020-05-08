#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo SCRIPT PATH
echo $SCRIPTPATH

mongoimport --host "mongo:27017" --db ballparkTracker --collection parks --file $SCRIPTPATH/../public/data/ballparks.extjson --drop

npm i
