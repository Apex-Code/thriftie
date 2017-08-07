class Deposit < ApplicationRecord
  belongs_to :transaction, inverse_of: :deposits
end
