class AddMealRefToMealItems < ActiveRecord::Migration
  def change
    add_reference :meal_items, :user_meal, references: :meals, index: true
    add_foreign_key :meal_items, :meals, column: :user_meal_id
  end
end
