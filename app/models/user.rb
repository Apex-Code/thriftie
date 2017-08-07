class User < ApplicationRecord
  has_many :goals, inverse_of: :user
  has_many :tranzactions, through: :goals 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
