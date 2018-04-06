include ActionView::Helpers::NumberHelper

class Driver < ApplicationRecord
  validates :name, presence: true
  validates :vin, presence: true

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

  def average_rating
    total_ratings = 0.0
    self.trips.each do |trip|
      total_ratings += trip.rating
    end
    number_of_trips = self.trips.length
    average_rating = total_ratings / number_of_trips
    number_with_precision(average_rating, precision: 1)
  end

  def self.search(search)
    where("name ILIKE ? or vin ILIKE ?", "%#{search}%", "%#{search}%")
  end

end
