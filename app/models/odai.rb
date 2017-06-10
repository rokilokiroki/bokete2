class Odai < ApplicationRecord
  belongs_to :user
  has_many :bokes
  has_many :odai_cards
  has_many :cards, through: :odai_cards
  mount_uploader :image, ImageUploader
end
