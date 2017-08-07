class AddColumnToWithdrawals < ActiveRecord::Migration[5.1]
  def change
      add_column :withdrawals, :tranzaction_id, :integer
      add_index :withdrawals, :tranzaction_id
  end
end
