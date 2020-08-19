class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum reason: { 保護者: 0, 窓口担当者: 1, 保育士: 2 }
  has_many :parents, dependent: :destroy
  has_many :children, dependent: :destroy
  has_many :contact_informations, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
