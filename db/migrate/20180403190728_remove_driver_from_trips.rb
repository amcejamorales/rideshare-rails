class RemoveDriverFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :driver_id
  end
end
