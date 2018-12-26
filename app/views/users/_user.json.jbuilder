json.extract! user, :id, :name, :passwd, :phone, :sex, :address, :friends, :province, :created_at, :updated_at
json.url user_url(user, format: :json)
