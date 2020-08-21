class Person < ApplicationRecord
  belongs_to :parent
  belongs_to :child, optional: true
  belongs_to :contact_information, optional: true
end
