class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :description
      t.integer :calories
      t.integer :grams_per_serving
      t.float :fat_sat
      t.float :fat_mono
      t.float :fat_poly
      t.float :carbs
      t.float :sugar
      t.float :protein
      t.float :fiber
      t.integer :sodium
      t.integer :choles

      t.timestamps null: false
    end
  end
end
