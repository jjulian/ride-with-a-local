class Taxi < ActiveRecord::Base
  validates_presence_of :name, :description, :api_key
  has_many :locations
  
  def last_known_location
    locations.last
  end
end
