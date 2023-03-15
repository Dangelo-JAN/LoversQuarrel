class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :notifications, as: :recipient
  belongs_to :user_types
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
