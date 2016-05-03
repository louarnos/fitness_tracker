class Meal < ActiveRecord::Base
  belongs_to :user, inverse_of: :meals
  has_many :meal_items, dependent: :destroy, inverse_of: :user_meal, foreign_key: 'user_meal_id'
  has_many :food_for_meals, through: :meal_items
end
