class AddColumnToWithdrawals < ActiveRecord::Migration[5.1]
  def change
      add_column :withdrawals, :transaction_id, :integer
      add_index :withdrawals, :transaction_id
  end
end
