# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'digest'

Taxi.create!([
  { :name => 'Jonathan', :license => nil, :phone => '443-803-1427', :photo_url => '/images/jonathan-mini.jpg', :api_key => Digest.hexencode('jonathan'),
    :description => 'Blue and black MINI Cooper S. I\'ll get you downtown fast, but I can only take one normal-sized and one small person.' },
  { :name => 'Nick', :license => nil, :phone => nil, :photo_url => '/images/ngauthier-car.jpg', :api_key => Digest.hexencode('nick'),
    :description => 'Data Unavailable' },
  { :name => 'Yair', :license => nil, :phone => nil, :photo_url => '/images/taxi_driver.jpg', :api_key => Digest.hexencode('yair'),
    :description => 'Data Unavailable' },
  { :name => 'Richard', :license => nil, :phone => nil, :photo_url => '/images/taxi_driver.jpg', :api_key => Digest.hexencode('richard'),
    :description => 'Data Unavailable' },
  { :name => 'Josh', :license => '37371CA', :phone => '413-346-7913', :photo_url => '/images/josh.jpg', :api_key => Digest.hexencode('josh'),
    :description => 'Dark Gray 2010 Toyota Prius' },
  { :name => 'Gordon', :license => '947 M341', :phone => '443-615-2084', :photo_url => '/images/gordon.jpg', :api_key => Digest.hexencode('gordon'),
    :description => 'Lexus RX330 cream color' }
])
