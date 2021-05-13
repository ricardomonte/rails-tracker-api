class RemovePriceFromFood < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :price, :integer

  end
end
