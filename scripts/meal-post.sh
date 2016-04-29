TOKEN='BAhJIiUwMjcyYTY1NDQ3Zjg4MjMxMDU1MTg0N2JlYmEzZjNlYgY6BkVG--afa066fa7beed099df43ce58aae9abe8119565f8'

curl --include --request POST http://localhost:3000/meals \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "meal" : {
    "meal_type" : "test type"
  }
}'
