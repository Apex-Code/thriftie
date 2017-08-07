class Withdrawal < ApplicationRecord
  belongs_to :goal, inverse_of :withdrawals
end
