#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/1 \
  --header "Authorization: Token token=BAhJIiUwMjcyYTY1NDQ3Zjg4MjMxMDU1MTg0N2JlYmEzZjNlYgY6BkVG--afa066fa7beed099df43ce58aae9abe8119565f8"
