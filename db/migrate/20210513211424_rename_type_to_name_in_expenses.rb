class RenameTypeToNameInExpenses < ActiveRecord::Migration[6.1]
  def change
    rename_column :expenses, :type, :category
  end
end
