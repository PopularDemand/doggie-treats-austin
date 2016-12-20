class DogPark < ApplicationRecord
ADDRESS_REGEX = /^(.+?), (.+?), .+ (\d+)/

  reverse_geocoded_by :latitude, :longitude, :address => :address
  after_validation :reverse_geocode
  # before_save :parse_coords
  validates :name, presence: true

  # attr_accessor :coordinates
  def street
    self.address.match(ADDRESS_REGEX)[1]
  end

  def city
    self.address.match(ADDRESS_REGEX)[2]
  end

  def zip
    self.address.match(ADDRESS_REGEX)[3]
  end

  def parse_coords
    self.latitude = coordinates[1]
    self.longitude = coordinates[0]
  end
end
