class RemoveDurationFromJourney < ActiveRecord::Migration[8.0]
  def change
    remove_column :journeys, :duration, :integer
  end
end
