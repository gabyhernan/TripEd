json.extract! location, :id, :name, :email, :password_hash, :address, :description, :subject, :accessibility, :created_at, :updated_at
json.url location_url(location, format: :json)