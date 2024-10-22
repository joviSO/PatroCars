json.extract! vehicle, :id, :vehicle_model_id, :color, :manufacturing_year, :model_year, :value, :license_plate, :sold, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
