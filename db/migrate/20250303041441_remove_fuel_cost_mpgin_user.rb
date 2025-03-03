class RemoveFuelCostMpginUser < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :fuel_cost, :decimal, precision: 10, scale: 2
    remove_column :users, :mpg, :float
  end
end
