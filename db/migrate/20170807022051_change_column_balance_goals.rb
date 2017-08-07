class ChangeColumnBalanceGoals < ActiveRecord::Migration[5.1]
  def change
    change_column(:goals, :balance, :decimal, :precision => 15, :scale => 2)
    change_column(:goals, :target, :decimal, :precision => 15, :scale => 2)
  end
end
