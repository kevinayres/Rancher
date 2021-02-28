#!/bin/bash

read -s -p "Enter Cloud encryption key: " KEY
export KEY
ccdecrypt -E KEY ~/Cloud_Creds.sh.cpt
. ~/Cloud_Creds.sh
ccrypt -E KEY ~/Cloud_Creds.sh
echo ""
env | grep Cloud | sed 's/[A-Z0-9waeiou]/*/g'
