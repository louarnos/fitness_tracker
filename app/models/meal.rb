class Meal < ActiveRecord::Base
  belongs_to :user, inverse_of: :meal
  has_many :meal_items
  has_many :foods, through: :meal_items
end
