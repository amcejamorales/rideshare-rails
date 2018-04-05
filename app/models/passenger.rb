include ActionView::Helpers::NumberHelper

class Passenger < ApplicationRecord
  has_many :trips
  validates :phone_num, presence: true
  validates :name, presence: true

  def passenger_total
   total_cost = 0
   self.trips.each do |trip |
     total_cost += trip.cost
   end
   total_cost = total_cost/100
   return number_to_currency(total_cost)
  end
end
