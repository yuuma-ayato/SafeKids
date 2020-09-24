class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_type: { 保護者: 0, 窓口担当者: 1, 保育士: 2 }
  has_many :reservations, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :children
  has_many :names
end
