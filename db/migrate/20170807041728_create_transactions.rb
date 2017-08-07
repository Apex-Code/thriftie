class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :goal_id
      t.integer :user_id
      t.timestamps
    end
  end
end
