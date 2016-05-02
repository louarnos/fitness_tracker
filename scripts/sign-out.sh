#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/1 \
  --header "Authorization: Token token=BAhJIiUwMzlhMDQ1NDU5MWVmMjYxZmIwMGEwOGMzM2U1MWZkZAY6BkVG--b780556f1d9fa842708c3c78c21ae1c88f51dc40"
