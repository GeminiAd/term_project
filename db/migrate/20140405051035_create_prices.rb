class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :station_fuel_type_id
      t.integer :fuel_type_id
      t.float :price
      t.datetime :time

      t.timestamps
    end
  end
end
