class ChangeFuelCostInUser < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :fuel_cost, :decimal, precision: 10, scale: 2
  end
end
