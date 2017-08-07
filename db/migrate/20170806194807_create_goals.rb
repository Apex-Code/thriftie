class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string   :title
      t.datetime :target_date
      t.timestamps
    end
  end
end
