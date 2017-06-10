class Boke < ApplicationRecord
 belongs_to :user
 belongs_to :odai
 belongs_to :card
 has_many :comments
 from  = Time.now.at_beginning_of_day
 to    = (from + 6.day).at_end_of_day
 bokes = Boke.where(created_at: from...to)
end
