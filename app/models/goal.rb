class Goal < ApplicationRecord
  belongs_to :user, inverse_of: :goals
  has_many :tranzactions, inverse_of :goal
end
