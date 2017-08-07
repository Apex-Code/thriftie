class Withdrawal < ApplicationRecord
  belongs_to :tranzaction, inverse_of: :withdrawals
end
