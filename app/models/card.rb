class Card < ApplicationRecord
  has_many :odai_cards
  has_many :odais, through: :odai_cards
  has_many :rensou_bokes
end
