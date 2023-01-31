class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :time
      t.integer :duration
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
