class Odai < ApplicationRecord
  belongs_to :user
  has_many :boke
  mount_uploader :image, ImageUploader
end
