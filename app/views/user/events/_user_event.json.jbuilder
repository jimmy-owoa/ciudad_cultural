json.extract! user_event, :id, :title, :description, :date, :created_at, :updated_at
json.url user_event_url(user_event, format: :json)
