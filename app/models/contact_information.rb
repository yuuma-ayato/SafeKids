class ContactInformation < ApplicationRecord
  validates :relation, presence: true
  validates :other_relation, length: { maximum: 255 }, presence: true, if: :otherrelation?

  def otherrelation?
    relation == "その他"
  end

  enum relation: { その他: 0, 父: 1, 母: 2 }
  has_many :families
end
