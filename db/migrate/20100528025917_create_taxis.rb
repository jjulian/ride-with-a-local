class CreateTaxis < ActiveRecord::Migration
  def self.up
    create_table :taxis do |t|
      t.string :name
      t.string :license
      t.string :phone
      t.string :description
      t.string :photo_url
      t.string :api_key
      t.timestamps
    end
  end
  
  def self.down
    drop_table :taxis
  end
end
