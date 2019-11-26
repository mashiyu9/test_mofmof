class ChangeColumnToAllowNull < ActiveRecord::Migration[5.0]
  def change
    change_column :nearest_stations, :route_name, :string, null: true
    change_column :nearest_stations, :station, :string, null: true
    change_column :nearest_stations, :walking_time, :string, null: true
  end
end
