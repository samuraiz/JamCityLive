json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :comment_id, :pic_art
  json.url post_url(post, format: :json)
end
