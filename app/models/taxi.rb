class Taxi < ActiveRecord::Base
  attr_accessible :name, :handle, :phone, :description
  validates_presence_of :name, :description
  has_many :locations
  
  def last_known_location
    locations.last
  end
end
