class User < ApplicationRecord
    has_many :visits
    has_many :stadia, through: :visits
end
