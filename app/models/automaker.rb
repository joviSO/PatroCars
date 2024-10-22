class Automaker < ApplicationRecord
  has_many :vehicle_models
  has_many :vehicles, through: :vehicle_models

  validates :name, presence: true
end
