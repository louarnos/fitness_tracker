TOKEN='BAhJIiU3N2NjMGRlMDc5ZjgxYTY3YjI2MDE2NDliMmZkODZkMAY6BkVG--117d4c4b480a2ba57cbe523ac95efcc9b2847717'
curl --include --request GET http://localhost:3000/meals/ \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
