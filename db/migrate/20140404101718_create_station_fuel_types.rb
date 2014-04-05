class CreateStationFuelTypes < ActiveRecord::Migration
  def change
    create_table :station_fuel_types do |t|
      t.integer :station_id
      t.integer :fuel_type_id
      t.text :description

      t.timestamps
    end
  end
end
