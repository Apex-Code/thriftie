class Goal < ApplicationRecord
  belongs_to :user, inverse_of: :goals
end
