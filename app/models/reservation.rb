class Reservation < ApplicationRecord
  enum reason: { 仕事: 0, 疾病: 1 }
  enum status: { 仮予約: 0, 本予約: 1 }

  belongs_to :user, optional: true
  belongs_to :daycare, optional: true
  has_many :comments, dependent: :destroy

  validates :date, presence: true
  validates :reason, presence: true
  validates :daycare_to_use, presence: true
  validates :status, presence: true
  validates :child_name, presence: true
end
