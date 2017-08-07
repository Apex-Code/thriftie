class Transaction < ApplicationRecord
  has_many :withdrawals, inverse_of: :transaction
  has_many :deposits, inverse_of: :transaction
end
