class Child < ApplicationRecord
  enum gender: { 男: 0, 女: 1 }
  mount_uploader :image, ImageUploader
  
  belongs_to :parent, optional: true
  belongs_to :user, optional: true
end
