json.extract! user, :id, :name, :date_of_birth, :phone_number, :email, :address, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
