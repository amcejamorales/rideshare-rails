include ActionView::Helpers::NumberHelper
class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger


def convert_to_currency(n)
  n = n/100
  return number_to_currency(n)
end

def self.search(search)
  where("rating = ?", "#{search}")
end
end
