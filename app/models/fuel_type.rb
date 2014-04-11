class FuelType < ActiveRecord::Base
  has_many :station_fuel_types
  has_many :stations, through: :station_fuel_types
end
