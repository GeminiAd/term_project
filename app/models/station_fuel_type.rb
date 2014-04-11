class StationFuelType < ActiveRecord::Base
  belongs_to :station
  belongs_to :fuel_type

  has_many :prices
end
