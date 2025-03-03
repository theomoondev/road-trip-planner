class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    has_many :journeys, dependent: :destroy
    has_many :destinations, through: :journeys
end
