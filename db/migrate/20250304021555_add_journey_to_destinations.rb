class AddJourneyToDestinations < ActiveRecord::Migration[8.0]
  def change
    add_reference :destinations, :journey, null: false, foreign_key: true
  end
end
