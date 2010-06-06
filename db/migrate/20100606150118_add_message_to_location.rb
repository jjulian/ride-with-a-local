class AddMessageToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :message, :string
  end

  def self.down
    remove_column :locations, :message
  end
end
