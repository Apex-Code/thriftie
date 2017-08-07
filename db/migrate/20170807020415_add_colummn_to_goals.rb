class AddColummnToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :balance, :decimal, :precision => 8, :scale => 2
    add_column :goals, :target, :decimal, :precision => 8, :scale => 2
  end
end
