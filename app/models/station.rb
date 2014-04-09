class Station < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }

  geocoded_by :street_address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode

  def street_address
    [address, city, state, country].compact.join(', ')
  end
end
