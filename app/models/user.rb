class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :booking_id
  has_many :creature_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
