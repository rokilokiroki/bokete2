class Boke < ApplicationRecord
 belongs_to :user
 belongs_to :odai
 has_many :comments
end
