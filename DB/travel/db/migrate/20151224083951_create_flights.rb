class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.references :airport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
