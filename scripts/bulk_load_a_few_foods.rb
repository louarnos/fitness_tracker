require 'csv'

CSV.foreach('data/food-data-small.csv', headers: true) do |food|
  Food.create!(food.to_hash)
end
