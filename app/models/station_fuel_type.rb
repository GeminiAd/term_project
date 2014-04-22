class StationFuelType < ActiveRecord::Base
  belongs_to :station
  belongs_to :fuel_type

  has_one :price

  validates :station_id, presence: true
  validates :fuel_type_id, presence: true
end
