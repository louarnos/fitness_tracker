class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type
  has_one :user
  has_many :meal_items
end
