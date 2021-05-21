class CreatePlayhours < ActiveRecord::Migration[6.1]
  def change
    create_table :playhours do |t|
      t.integer :hour
      t.date :play
      t.references :dog, null: false, foreign_key: true
      t.timestamps
    end
  end
end
