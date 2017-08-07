class AddColumnToDeposits < ActiveRecord::Migration[5.1]
  def change
    add_column :deposits, :tranzaction_id, :integer
    add_index :deposits, :tranzaction_id
  end
end
