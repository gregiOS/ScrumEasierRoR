json.array!(@users) do |user|
  json.extract! user, :id, :login, :first_name, :second_name, :email
  json.url user_url(user, format: :json)
end
