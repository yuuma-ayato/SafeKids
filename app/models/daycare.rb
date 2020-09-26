class Daycare < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :phone_number, presence: true, length: { maximum: 11 }
  validates :postal_code, presence: true, length: { maximum: 7 }, format: { with: /\A\d{7}\z/ }
  validates :prefecture, presence: true, length: { maximum: 255 }, format: { with: /\A[一-龥]+\z/ }
  validates :city, presence: true, length: { maximum: 255 }, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :adress, presence: true, length: { maximum: 255 }
  validates :building, length: { maximum: 255 }
  validates :capacity, presence: true
end
