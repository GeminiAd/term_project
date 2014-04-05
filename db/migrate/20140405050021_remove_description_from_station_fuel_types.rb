class RemoveDescriptionFromStationFuelTypes < ActiveRecord::Migration
  def change
    remove_column :station_fuel_types, :description, :text
  end
end
