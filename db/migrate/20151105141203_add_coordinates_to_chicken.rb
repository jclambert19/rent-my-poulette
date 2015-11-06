class AddCoordinatesToChicken < ActiveRecord::Migration
  def change
    add_column :chickens, :latitude, :float
    add_column :chickens, :longitude, :float
  end
end
