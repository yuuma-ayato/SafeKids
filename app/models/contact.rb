# frozen_string_literal: true

class Contact < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum relation: { その他の続柄: 0, 父親: 1, 母親: 2 }

  def otherrelation?
    relation == 'その他の続柄'
  end

  belongs_to :user, optional: true
  has_many :names
  accepts_nested_attributes_for :names, allow_destroy: true, reject_if: :all_blank

  validates :relation, presence: true, length: { maximum: 255 }
  validates :other_relation, length: { maximum: 255 }, presence: true, if: :otherrelation?
  validates :phone_number, presence: true, length: { maximum: 11 }
  validates :postal_code, presence: true, length: { maximum: 7 }, format: { with: /\A\d{7}\z/ }
  validates :prefecture, presence: true, length: { maximum: 255 }, format: { with: /\A[一-龥]+\z/ }
  validates :city, presence: true, length: { maximum: 255 }, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :adress, presence: true, length: { maximum: 255 }
  validates :building, length: { maximum: 255 }
  validates :image, presence: true
  validates :names, presence: true
end
