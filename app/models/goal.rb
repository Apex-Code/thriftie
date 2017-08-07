class Goal < ApplicationRecord
  belongs_to :user, inverse_of: :goals
  has_many :transactions, inverse_of :goal
end
