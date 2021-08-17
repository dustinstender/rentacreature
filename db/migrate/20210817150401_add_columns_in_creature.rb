class AddColumnsInCreature < ActiveRecord::Migration[6.0]
  def change
    add_column :creatures, :rating, :string
    add_column :creatures, :profile_pic, :binary
  end
end
