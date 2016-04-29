class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :meals, :type, :meal_type
  end
end
