class Trip < ApplicationRecord
  has_many :drivers
  has_many :passengers
end
