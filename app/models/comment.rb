# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :reservation

  validates :content, presence: true
end
