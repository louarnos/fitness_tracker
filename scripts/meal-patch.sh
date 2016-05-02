TOKEN='BAhJIiVlNDU1NzFjNTc3MjU2NWE3NzNhMDQ3NDA5NGFkYzNhNwY6BkVG--eeb28f8bb4f63c72e42f64f2fdb8aee2a8491233'
ID ='12'

curl --include --request PATCH http://localhost:3000/meals/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "meal" : {
    "food_for_meals" : [1,2,3,4,5,6,7,8,9]
  }
}'
