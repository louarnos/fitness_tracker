class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :description, null: false
      t.integer :calories, null: false
      t.integer :grams_per_serving, null: false
      t.float :fat_sat, null: false
      t.float :fat_mono, null: false
      t.float :fat_poly, null: false
      t.float :carbs, null: false
      t.float :sugar
      t.float :protein, null: false
      t.float :fiber
      t.integer :sodium
      t.integer :choles

      t.timestamps null: false
    end
  end
end
