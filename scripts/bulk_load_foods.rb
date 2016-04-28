require 'csv'

CSV.foreach('data/food-data.csv', headers: true) do |food|
  Food.create!(food.to_hash)
end
