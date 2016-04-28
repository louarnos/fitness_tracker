class AddUserRefToMeal < ActiveRecord::Migration
  def change
    add_reference :meals, :user, references: :users, index: true
    add_foreign_key :meals, :users, column: :user_id
  end
end
