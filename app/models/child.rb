class Child < ApplicationRecord
  enum gender: { 男: 0, 女: 1 }

  belongs_to :parent, optional: true
end
