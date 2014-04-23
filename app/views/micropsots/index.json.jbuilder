json.array!(@micropsots) do |micropsot|
  json.extract! micropsot, :id, :content, :user_id
  json.url micropsot_url(micropsot, format: :json)
end
