class Person < ApplicationRecord
  belongs_to :personable, polymorphic: true
end
