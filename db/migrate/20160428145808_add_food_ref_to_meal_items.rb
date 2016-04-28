class AddFoodRefToMealItems < ActiveRecord::Migration
  def change
    add_reference :meal_items, :food_for_meal, references: :foods, index: true
    add_foreign_key :meal_items, :foods, column: :food_for_meal_id
  end
end
