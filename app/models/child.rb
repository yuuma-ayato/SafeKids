class Child < ApplicationRecord
  validates :other_relation, length: { maximum: 255 }, presence: true, if: :otherrelation?

  def otherrelation?
    relation == "その他"
  end

  enum relation: { その他: 0, 男: 1, 女: 2 }
  belongs_to :user
end
