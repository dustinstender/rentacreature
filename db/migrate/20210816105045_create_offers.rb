class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :power
      t.string :description
      t.float :price_per_day
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
