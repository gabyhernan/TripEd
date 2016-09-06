json.extract! user, :id, :name, :email, :password_hash, :school, :school_address, :created_at, :updated_at
json.url user_url(user, format: :json)