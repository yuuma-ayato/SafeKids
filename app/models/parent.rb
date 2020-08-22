class Parent < ApplicationRecord
  validates :relation, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  validates :prefecture, presence: true, format: { with: /\A[一-龥]+\z/ }
  validates :city, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :adress, presence: true

  enum relation: { 父: 0, 母: 1 }

  has_many :children, dependent: :destroy
  accepts_nested_attributes_for :children, allow_destroy: true, reject_if: :all_blank
end
