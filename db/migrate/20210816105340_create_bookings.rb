class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :creature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
