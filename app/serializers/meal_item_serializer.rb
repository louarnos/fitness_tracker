class MealItemSerializer < ActiveModel::Serializer
  attributes :id, :serv_qty
  has_one :food
  has_one :meal
end
