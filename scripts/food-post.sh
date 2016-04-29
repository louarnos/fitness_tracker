
curl --include --request POST http://localhost:3000/foods \
  --header "Content-Type: application/json" \
  --data '{
    "food" : {
      "desc" : "new food",
      "calories" : "1",
      "grams_per_serving" : "1",
      "fat_sat" : "1",
      "fat_mono" : "1",
      "fat_poly" : "1",
      "carbs" : "1",
      "sugar" : "1",
      "protein" : "1",
      "fiber" : "1",
      "sodium" : "1",
      "choles" : "1"
  }
}'
