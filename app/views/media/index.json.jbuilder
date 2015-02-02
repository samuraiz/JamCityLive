json.array!(@media) do |medium|
  json.extract! medium, :id, :title, :description, :type, :media_url
  json.url medium_url(medium, format: :json)
end
