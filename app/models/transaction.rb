class Tranzaction < ApplicationRecord
  has_many :withdrawals, inverse_of: :tranzaction
  has_many :deposits, inverse_of: :tranzaction
  belongs_to :goal, inverse_of: :tranzactions 
end
