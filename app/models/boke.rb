class Boke < ApplicationRecord
 belongs_to :users
 belongs_to :odai
 has_many :comment
end
