class Comment < ApplicationRecord
  belongs_to :reservation, dependent: :destroy
end
