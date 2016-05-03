TOKEN='BAhJIiU3N2NjMGRlMDc5ZjgxYTY3YjI2MDE2NDliMmZkODZkMAY6BkVG--117d4c4b480a2ba57cbe523ac95efcc9b2847717'
ID='12'

curl --include --request DELETE http://localhost:3000/meals/$ID \
  --header "Authorization: Token token=$TOKEN"
