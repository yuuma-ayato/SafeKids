class Name < ApplicationRecord
  belongs_to :parent, optional: true
end
