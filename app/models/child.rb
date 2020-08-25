class Child < ApplicationRecord
  validates :gender, presence: true
  validates :birth, presence: true
  validates :image, presence: true
  
  enum gender: { 男: 0, 女: 1 }
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  has_many :names
  accepts_nested_attributes_for :names, allow_destroy: true, reject_if: :all_blank
end
