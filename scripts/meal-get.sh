TOKEN='BAhJIiViZGVjNDE1ZWJlNmRhNzgyYjdkMmJlZTQwOTczMjY2MwY6BkVG--d1fde39b99e61e192bbc69ce6788fbceb3aa4fb5'
ID='1'
curl --include --request GET http://localhost:3000/meals/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
