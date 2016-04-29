class Food < ActiveRecord::Base
  has_many :meal_items, inverse_of: :food_for_meal, foreign_key: 'food_for_meal_id'
  has_many :user_meals, through: :meal_items
  
  def self.search_by_key(key)
    if key
      response = HTTParty.get("http://prost.herokuapp.com/api/v1/beer/#{key}")
      {beer: response['title'], key: response['key'], abv: response['abv'], style: response['tags'], brewery: response['brewery']}
    end
  end
end
