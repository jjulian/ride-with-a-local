require 'digest'
class Taxi < ActiveRecord::Base
  validates_presence_of :name, :description
  has_many :locations
  before_create { |taxi| taxi.generate_api_key if taxi.api_key.blank? }
  
  def last_known_location
    locations.last
  end
  
  def generate_api_key
    self.api_key = Digest.hexencode(self.name + self.description)
  end
end
