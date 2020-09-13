class Child < ApplicationRecord
  enum gender: { その他: 0, 男: 1, 女: 1 }
  mount_uploader :image, ImageUploader

  def othergender?
    gender == "その他"
  end

  belongs_to :user, optional: true
  has_many :names
  accepts_nested_attributes_for :names, allow_destroy: true, reject_if: :all_blank

  validates :gender, presence: true
  validates :other_gender, length: { maximum: 255 }, presence: true, if: :othergender?
  validates :birth, presence: true
  validates :image, presence: true
  validates :names, presence: true
end
