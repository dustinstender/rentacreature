class AddCoordinatesToCreatures < ActiveRecord::Migration[6.0]
  def change
    add_column :creatures, :latitude, :float
    add_column :creatures, :longitude, :float
  end
end
