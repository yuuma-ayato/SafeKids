class Name < ApplicationRecord
  belongs_to :contact, optional: true
end
