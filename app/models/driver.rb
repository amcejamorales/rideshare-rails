include ActionView::Helpers::NumberHelper

class Driver < ApplicationRecord
  has_many :trips

  def total_earnings
    subtotal_cents = 0
    self.trips.each do |trip|
      subtotal_cents += ( trip.cost - 165 )
    end
    subtotal = subtotal_cents / 100
    total = subtotal * 0.80
    number_to_currency(total)
  end
  
end
