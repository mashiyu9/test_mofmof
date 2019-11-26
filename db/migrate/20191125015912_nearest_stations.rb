class NearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.text :route_name, :null => false
      t.string :station, :null => false
      t.integer :walking_time, :null => false
      t.references :propety, foreign_key: true
    end
  end
end
