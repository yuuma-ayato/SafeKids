# frozen_string_literal: true

class Name < ApplicationRecord
  belongs_to :contact, optional: true
  belongs_to :child, optional: true

  validates :family_name, presence: true, length: { maximum: 255 }
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :family_name_kana, presence: true, length: { maximum: 255 }
  validates :first_name_kana, presence: true, length: { maximum: 255 }
end
