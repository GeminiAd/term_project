class FuelType < ActiveRecord::Base
  has_many :station_fuel_types, dependent: :destroy

  validates :name, presence: true
end
