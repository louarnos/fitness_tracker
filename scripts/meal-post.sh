TOKEN='BAhJIiU2ZjA5YWUzYmNkMzc4ZjFhZjc5Y2ZjNzU4M2ZjZTcxZQY6BkVG--bd4a857908df5f3bc9015aa3e7b2cf89cb710c79'

curl --include --request POST http://localhost:3000/meal_items \
  --header "Content-Type: application/json" \
  --data '{
    "meal_item" : {
    "food_for_meal_id" : "4",
    "user_meal_id" : "68"
  }
}'


  --header "Authorization: Token token=$TOKEN" \
