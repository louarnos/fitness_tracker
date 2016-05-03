class MealItemSerializer < ActiveModel::Serializer
  attributes :id, :serv_qty
  has_one :food_for_meal
  has_one :user_meal
end
