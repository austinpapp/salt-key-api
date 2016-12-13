#!/bin/bash

# Attempting to use a token

token=$(curl -sSk http://192.168.50.10:8000/login \
    -H "Accept: application/json" \
    -H "Content-type: application/json" \
    -d '{ "username": "austin", "password":"austin", "eauth":"pam"}' \
    | python -c "import sys, json; print json.load(sys.stdin)['return'][0]['token']")

curl http://192.168.50.10:8000/keys \
    -H "Accept: application/json" \
    -H "Content-type: application/json"  \
    -H "X-Auth-Token: $token" \
    -d '{ "mid": "minion1234" }'
