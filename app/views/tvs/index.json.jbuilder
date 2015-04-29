json.array!(@tvs) do |tv|
  json.extract! tv, :id, :title, :video
  json.url tv_url(tv, format: :json)
end
