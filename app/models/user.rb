class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :challenges
  has_many :participations
  has_many :challenges, through: :participations

  validates :first_name, :last_name, presence: true
end
