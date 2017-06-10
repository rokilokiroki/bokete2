class OdaiCard < ApplicationRecord
  belongs_to  :odai
  belongs_to  :card
  accepts_nested_attributes_for :odai
end
