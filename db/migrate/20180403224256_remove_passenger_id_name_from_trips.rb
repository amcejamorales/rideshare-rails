class RemovePassengerIdNameFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :passenger_id
  end
end
