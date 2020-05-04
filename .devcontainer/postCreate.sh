#!/bin/bash

mongoimport --host "mongo:27017" --db ballparkTracker --collection parks --file $PWD/public/data/ballparks.extjson --drop

npm i
