class DogPark < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude, :address => :address
  after_validation :reverse_geocode
  # before_save :parse_coords
  validates :name, presence: true

  # attr_accessor :coordinates



  def parse_coords
    self.latitude = coordinates[1]
    self.longitude = coordinates[0]
  end
end
