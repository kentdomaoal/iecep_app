json.array!(@events) do |event|
  json.extract! event, :name, :content, :scheduled_on, :event_type
  json.url event_url(event, format: :json)
end