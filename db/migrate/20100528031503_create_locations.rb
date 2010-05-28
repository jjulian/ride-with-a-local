class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :taxi_id
      t.string :lat
      t.string :lon
      t.timestamps
    end
  end
  
  def self.down
    drop_table :locations
  end
end
