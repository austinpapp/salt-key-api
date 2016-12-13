#!/bin/bash

# Using pam auth explicitly

curl http://192.168.50.10:8000/keys \
    -H "Accept: application/json" \
    -H "Content-type: application/json" \
    -d '{ "username": "austin", "password":"austin", "mid": "minion1234", "eauth":"pam", "force": "true" }'
