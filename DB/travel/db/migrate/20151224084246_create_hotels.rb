class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.date :in
      t.date :out
      t.integer :rating
      t.integer :price
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
