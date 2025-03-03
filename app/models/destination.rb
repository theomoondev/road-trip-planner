class Destination < ApplicationRecord
    validates :name, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
    validates :priority, presence: true
    validates :type, presence: true
    validates :type, inclusion: { in: %w[City Landmark Lodging Restaurant] }
    validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
    validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
    validates :priority, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
    belongs_to :journey
end
