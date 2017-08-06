class User < ApplicationRecord
  has_many :goals, inverse_of: :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
