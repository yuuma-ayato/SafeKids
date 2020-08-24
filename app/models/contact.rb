class Contact < ApplicationRecord
  validates :relation, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  validates :prefecture, presence: true, format: { with: /\A[一-龥]+\z/ }
  validates :city, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :adress, presence: true

  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  has_many :names
  accepts_nested_attributes_for :names, allow_destroy: true, reject_if: :all_blank
end
