class Beer < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, prescence: true
end
