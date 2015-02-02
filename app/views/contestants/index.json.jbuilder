json.array!(@contestants) do |contestant|
  json.extract! contestant, :id, :name, :bio, :nickname, :image
  json.url contestant_url(contestant, format: :json)
end
