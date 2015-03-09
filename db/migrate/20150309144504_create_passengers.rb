class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.references :flight
      t.string :name
      t.integer :passport

      t.timestamps null: false
    end
  end
end
