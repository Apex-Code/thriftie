class AddColumnToDeposits < ActiveRecord::Migration[5.1]
  def change
    add_column :deposits, :transaction_id, :integer
    add_index :deposits, :transaction_id
  end
end
