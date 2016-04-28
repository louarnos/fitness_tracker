class MealItem < ActiveRecord::Base
  belongs_to :food, inverse_of: :meal_items
  belongs_to :meal, inverse_of: :meal_items
end
