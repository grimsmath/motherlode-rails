json.array!(@users) do |user|
  json.extract! user, :username, :name, :email, :bio, :admin
  json.url user_url(user, format: :json)
end
