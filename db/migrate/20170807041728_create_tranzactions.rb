class CreateTranzactions < ActiveRecord::Migration[5.1]
  def change
    create_table :tranzactions do |t|
      t.integer :goal_id
      t.integer :user_id
      t.timestamps
    end
  end
end
