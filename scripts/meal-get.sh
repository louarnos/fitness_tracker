TOKEN='BAhJIiU4YmRkMjNjODI2YTM0NDI2YjFmNzY4NzZlYzI4NTdlNwY6BkVG--2bda74e0a0ee5424b6317009808b33c4eaeb01cc'
curl --include --request GET http://localhost:3000/meals/ \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
