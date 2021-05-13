class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :amount
      t.integer :times_per_day 
      t.integer :total_kilograms
      t.integer :price
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
