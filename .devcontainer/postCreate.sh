#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

mongoimport --host "mongo:27017" --db ballparkTracker --collection parks --file $SCRIPTPATH/../public/data/ballparks.extjson --drop

sudo chown node $SCRIPTPATH/../node_modules
npm i
