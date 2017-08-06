class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :target
      t.integer :balance
      t.datetime :target_date

      t.timestamps
    end
  end
end
