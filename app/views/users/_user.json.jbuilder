json.extract! user, :id, :role, :email, :first_name, :last_name, :google_id, :profile_photo, :created_at, :updated_at, :created_at, :updated_at
json.url user_url(user, format: :json)
