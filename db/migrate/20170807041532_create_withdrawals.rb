class CreateWithdrawals < ActiveRecord::Migration[5.1]
  def change
    create_table :withdrawals do |t|

      t.timestamps
    end
  end
end
