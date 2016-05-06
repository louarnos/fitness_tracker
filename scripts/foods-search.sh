KEY='COCA'
curl --include --request GET http://localhost:3000/foods/search/$KEY \
  --header "Content-Type: application/json"
