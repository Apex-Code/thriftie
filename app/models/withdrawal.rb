class Withdrawal < ApplicationRecord
  belongs_to :transaction, inverse_of: :withdrawals
end
