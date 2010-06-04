class Taxi < ActiveRecord::Base
  validates_presence_of :name, :description, :api_key
  has_many :locations
end
