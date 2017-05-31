class Odai < ApplicationRecord
  belongs_to :user
  has_many :bokes
  mount_uploader :image, ImageUploader
end
