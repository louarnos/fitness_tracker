class MealItem < ActiveRecord::Base
  belongs_to :food_for_meal, inverse_of: :meal_items, class_name: 'Food'
  belongs_to :user_meal, inverse_of: :meal_items, class_name: 'Meal'
end
