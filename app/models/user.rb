class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
   find_or_create_by!(email: 'guest@example.com') do |user|
     user.password = SecureRandom.urlsafe_base64
     # user.confirmed_at = Time.now  # Confirmable（メールアドレスでの認証） を使用している場合は必要
   end
  end

  def self.guest_clerk
   find_or_create_by!(email: 'guest_clerk@example.com') do |user|
     user.password = SecureRandom.urlsafe_base64
     user.user_type = 1
     # user.confirmed_at = Time.now  # Confirmable（メールアドレスでの認証） を使用している場合は必要
   end
  end

  def self.guest_childminder
   find_or_create_by!(email: 'guest_clerk@example.com') do |user|
     user.password = SecureRandom.urlsafe_base64
     user.user_type = 2
     # user.confirmed_at = Time.now  # Confirmable（メールアドレスでの認証） を使用している場合は必要
   end
  end

  enum user_type: { 保護者: 0, 窓口担当者: 1, 保育士: 2 }
  has_many :reservations, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :children
  has_many :names
end
