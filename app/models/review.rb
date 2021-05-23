class Review < ApplicationRecord
  has_one :beer 
  validates :content, prescence: true
end
