# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Taxi.create!([
  { :name => 'Jonathan', :license => nil, :phone => '4438031427', :photo_url => '/images/jonathan-mini.jpg', 
    :description => 'Blue and black MINI Cooper S. I\'ll get you downtown fast, but I can only take one normal-sized and one small person.' },
  { :name => 'Nick', :license => nil, :phone => nil, :photo_url => '/images/ngauthier-car.jpg', 
    :description => 'temp' },
  { :name => 'Yair', :license => nil, :phone => nil, :photo_url => nil, 
    :description => 'temp' },
  { :name => 'Richard', :license => nil, :phone => nil, :photo_url => nil, 
    :description => 'temp' },
  { :name => 'Josh', :license => nil, :phone => nil, :photo_url => nil, 
    :description => 'temp' },
  { :name => 'Gordon', :license => nil, :phone => nil, :photo_url => nil, 
    :description => 'temp' }
])
