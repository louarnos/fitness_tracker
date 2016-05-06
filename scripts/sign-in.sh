#!/bin/bash

curl --include --request POST http://www.salty-river-32913.herokuapp.com/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "lol@lol.com",
      "password": "lol"
    }
  }'
