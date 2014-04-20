class Price < ActiveRecord::Base
  belongs_to :station_fuel_type

  validates :station_fuel_type_id, presence: true
  validates :price, presence: true
  validates :time, presence: true 
end
