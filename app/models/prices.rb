class Prices < ActiveRecord::Base
  belongs_to :station_fuel_types

  has_one :station, through: :station_fuel_types
  has_one :fuel_type, through: :station_fuel_types
end
