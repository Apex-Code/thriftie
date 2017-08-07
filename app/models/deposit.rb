class Deposit < ApplicationRecord
  belongs_to :tranzaction, inverse_of: :deposits
end
