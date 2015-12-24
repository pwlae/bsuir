class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :type
      t.integer :number
      t.date :expire
      t.string :cvv
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
