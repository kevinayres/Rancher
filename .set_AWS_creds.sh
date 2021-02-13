#!/bin/bash

read -s -p "Enter AWS encryption key: " KEY
export KEY
ccdecrypt -E KEY ~/AWS_Creds.sh.cpt
. ~/AWS_Creds.sh
ccrypt -E KEY ~/AWS_Creds.sh
echo ""
env | grep AWS | sed 's/[A-Z0-9waeiou]/*/g'
