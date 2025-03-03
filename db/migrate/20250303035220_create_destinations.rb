class CreateDestinations < ActiveRecord::Migration[8.0]
  def change
    create_table :destinations do |t|
      t.string :type
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :priority

      t.timestamps
    end
  end
end
