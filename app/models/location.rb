class Location < ActiveRecord::Base
  attr_accessible :taxi_id, :lat, :lon, :message
  validates_presence_of :lat, :lon
end
