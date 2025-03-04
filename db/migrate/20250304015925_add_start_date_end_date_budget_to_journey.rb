class AddStartDateEndDateBudgetToJourney < ActiveRecord::Migration[8.0]
  def change
    add_column :journeys, :start_date, :date
    add_column :journeys, :end_date, :date
    add_column :journeys, :budget, :decimal, precision: 10, scale: 2
  end
end
