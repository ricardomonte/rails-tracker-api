class AddColumKgToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :kilograms, :integer
    add_column :dogs, :regular_play_time, :integer
  end
end
