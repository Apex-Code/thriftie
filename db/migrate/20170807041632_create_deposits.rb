class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|
      t.decimal :amount, precision: 15, scale: 2
      t.timestamps
    end
  end
end
