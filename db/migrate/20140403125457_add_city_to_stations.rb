class AddCityToStations < ActiveRecord::Migration
  def change
    add_column :stations, :city, :string
  end
end
