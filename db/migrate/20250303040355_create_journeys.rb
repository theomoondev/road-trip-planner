class CreateJourneys < ActiveRecord::Migration[8.0]
  def change
    create_table :journeys do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.float :distance

      t.timestamps
    end
  end
end
