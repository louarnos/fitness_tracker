TOKEN='BAhJIiU5NTVhOTc2OThmMDc4NWJlMzdmMDYwZmUzNjM3NzQwMQY6BkVG--c3a4f634a065a7029e6cfee5256bddebb2c9cc13'

curl --include --request POST http://localhost:3000/meal_items \
  --header "Content-Type: application/json" \
  --data '{
    "meal_item" : {
    "food_for_meal_id" : "4",
    "user_meal_id" : "1"
  }
}'


  --header "Authorization: Token token=$TOKEN" \
