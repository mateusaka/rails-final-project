class Genre < ApplicationRecord
  has_many :films
  has_one :director
end
