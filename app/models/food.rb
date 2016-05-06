class Food < ActiveRecord::Base
  has_many :meal_items, inverse_of: :food_for_meal, foreign_key: 'food_for_meal_id'
  has_many :user_meals, through: :meal_items

  def self.search (key)
    Food.where("description LIKE ?", "%#{key}%")
  end

end
