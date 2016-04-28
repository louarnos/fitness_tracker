class MealSerializer < ActiveModel::Serializer
  attributes :id, :type
  has_one :user
  has_one :meal_item
end
