class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type, :meal_items, :food_for_meals, :created_at
  has_one :user
  has_many :meal_items
end
