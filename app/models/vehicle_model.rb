class VehicleModel < ApplicationRecord
  belongs_to :automaker
  has_many :vehicles
end
