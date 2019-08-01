json.extract! user_member, :id, :name, :lastname, :email, :summary, :phone, :created_at, :updated_at
json.url user_member_url(user_member, format: :json)
