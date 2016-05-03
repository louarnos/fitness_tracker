TOKEN='BAhJIiU2ZjA5YWUzYmNkMzc4ZjFhZjc5Y2ZjNzU4M2ZjZTcxZQY6BkVG--bd4a857908df5f3bc9015aa3e7b2cf89cb710c79'
ID='18'

curl --include --request PATCH http://localhost:3000/meals/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "meal" : {
    "meal_type" : "get-fucked"
  }
}'
