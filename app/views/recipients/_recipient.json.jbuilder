json.extract! recipient, :id, :name, :address, :created_at, :updated_at
json.url recipient_url(recipient, format: :json)