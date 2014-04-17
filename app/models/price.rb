class Price < ActiveRecord::Base
  validates :station_fuel_type_id, presence: true
  validates :price, presence: true
  validates :time, presence: true 
end
