class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.references :flight
      t.datetime :date
      t.integer :status

      t.timestamps null: false
    end
  end
end
