class FuelType < ActiveRecord::Base
  has_one :station_fuel_type

  validates :name, presence: true
end
