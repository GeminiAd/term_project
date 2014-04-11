lass Station < ActiveRecord::Base
  has_many :station_fuel_types
  has_many :prices, through: :station_fuel_types
  has_many :fuel_types, through: :station_fuel_types

  validates :name, presence: true, length: { minimum: 3 }
  validates :address, :city, :state, :country, presence: true, if: "lat.nil? or lon.nil?"
  #validates :lat, :lon, presence: true, if: "address.nil? or city.nil? or state.nil? or country.nil?"

  geocoded_by :street_address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode

  def street_address
    [address, city, state, country].compact.join(', ')
  end
end
