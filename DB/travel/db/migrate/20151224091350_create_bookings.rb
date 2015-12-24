class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.references :city, index: true, foreign_key: true
      t.references :price, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
