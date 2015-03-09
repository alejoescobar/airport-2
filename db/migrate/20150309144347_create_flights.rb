class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :airline
      t.integer :number

      t.timestamps null: false
    end
  end
end
