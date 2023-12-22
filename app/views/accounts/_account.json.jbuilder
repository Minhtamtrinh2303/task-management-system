json.extract! account, :id, :username, :email, :password, :created_at, :updated_at
json.url account_url(account, format: :json)
