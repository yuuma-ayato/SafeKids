class Daycare < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
