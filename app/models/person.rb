class Person < ApplicationRecord
  belongs_to :personable, polymorphic: true, inverse_of: :personable
end
