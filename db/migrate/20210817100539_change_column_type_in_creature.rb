class ChangeColumnTypeInCreature < ActiveRecord::Migration[6.0]
  def change
    rename_column :creatures, :type, :species
  end
end
