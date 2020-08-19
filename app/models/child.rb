class Child < ApplicationRecord
  validates :other_relation, length: { maximum: 255 }, presence: true, if: :othergender?

  def othergender?
    gender == "その他"
  end

  enum gender: { その他: 0, 男: 1, 女: 2 }
  belongs_to :user
  has_many :people, as: :personable, inverse_of: :personable, dependent: :destroy
  accepts_nested_attributes_for :people
end
