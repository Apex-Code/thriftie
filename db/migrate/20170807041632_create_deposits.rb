class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|

      t.timestamps
    end
  end
end
