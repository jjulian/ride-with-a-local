# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'digest'

Taxi.create!([
  { :name => 'Jonathan', :license => nil, :phone => '4438031427', :photo_url => '/images/jonathan-mini.jpg', :api_key => Digest.hexencode('jonathan'),
    :description => 'Blue and black MINI Cooper S. I\'ll get you downtown fast, but I can only take one normal-sized and one small person.' },
  { :name => 'Nick', :license => nil, :phone => nil, :photo_url => '/images/ngauthier-car.jpg', :api_key => Digest.hexencode('nick'),
    :description => 'temp' },
  { :name => 'Yair', :license => nil, :phone => nil, :photo_url => nil, :api_key => Digest.hexencode('yair'),
    :description => 'temp' },
  { :name => 'Richard', :license => nil, :phone => nil, :photo_url => nil, :api_key => Digest.hexencode('richard'),
    :description => 'temp' },
  { :name => 'Josh', :license => nil, :phone => nil, :photo_url => nil, :api_key => Digest.hexencode('josh'),
    :description => 'temp' },
  { :name => 'Gordon', :license => nil, :phone => nil, :photo_url => nil, :api_key => Digest.hexencode('gordon'),
    :description => 'temp' }
])
