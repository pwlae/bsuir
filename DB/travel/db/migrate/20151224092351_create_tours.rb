class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :source
      t.string :destenation
      t.integer :price
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
