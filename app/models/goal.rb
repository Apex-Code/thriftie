class Goal < ApplicationRecord
  belongs_to :user, inverse_of: :goals
  has_many :withdrawals, inverse_of: :goal
  has_many :transactions, inverse_of: :goal

  def total_withdrawals
    @goal.withdrawals.sum
  end
end
