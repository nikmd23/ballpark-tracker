#!/bin/bash

filename=~/.env
if [ ! -f $filename ]
then
    echo AZURE_MAPS_KEY not defined
    touch $filename
    echo AZURE_MAPS_KEY=[YOUR KEY HERE] > $filename
fi