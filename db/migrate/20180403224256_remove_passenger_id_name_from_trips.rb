class RemovePassengerIdNameFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :passenger_id
  end
end
