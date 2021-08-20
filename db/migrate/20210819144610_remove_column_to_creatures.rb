class RemoveColumnToCreatures < ActiveRecord::Migration[6.0]
  def change
    remove_column :creatures, :profile_pic
  end
end
