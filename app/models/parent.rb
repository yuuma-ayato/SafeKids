class Parent < ApplicationRecord
  validates :relation, presence: true
  validates :other_relation, length: { maximum: 255 }, presence: true, if: :otherrelation?
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  validates :prefecture, presence: true, format: { with: /\A[一-龥]+\z/ }
  validates :city, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :adress, presence: true

  def otherrelation?
    relation == "その他"
  end

  enum relation: { その他: 0, 父: 1, 母: 2 }
  has_many :family
end
