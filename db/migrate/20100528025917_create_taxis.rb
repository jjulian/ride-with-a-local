class CreateTaxis < ActiveRecord::Migration
  def self.up
    create_table :taxis do |t|
      t.string :name
      t.string :handle
      t.string :phone
      t.string :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :taxis
  end
end
