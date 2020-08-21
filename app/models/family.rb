class Family < ApplicationRecord
  belongs_to :user
  belongs_to :parent
  belongs_to :child
  belongs_to :contact_information
end
