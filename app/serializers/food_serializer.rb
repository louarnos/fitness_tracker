class FoodSerializer < ActiveModel::Serializer
  attributes :id, :desc, :calories, :grams_per_serving, :fat_sat, :fat_mono, :fat_poly, :carbs, :sugar, :protein, :fiber, :sodium, :choles
end
