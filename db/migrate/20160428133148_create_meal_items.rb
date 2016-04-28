class CreateMealItems < ActiveRecord::Migration
  def change
    create_table :meal_items do |t|
      t.integer :serv_qty

      t.timestamps null: false
      
    end
  end
end
