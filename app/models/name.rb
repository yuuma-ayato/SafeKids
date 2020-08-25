class Name < ApplicationRecord
  validates :family_name, presence: true, length: { maximum: 255 }
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :family_name_kana, presence: true, length: { maximum: 255 }
  validates :first_name_kana, presence: true, length: { maximum: 255 }

  belongs_to :contact, optional: true
end
