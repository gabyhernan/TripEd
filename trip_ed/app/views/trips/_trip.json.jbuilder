json.extract! trip, :id, :user_id, :location_id, :date, :start_time, :reserved, :created_at, :updated_at
json.url trip_url(trip, format: :json)