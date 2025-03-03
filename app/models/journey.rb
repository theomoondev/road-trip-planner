class Journey < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
    has_many :destinations, dependent: :destroy
end
