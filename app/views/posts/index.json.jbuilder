json.array!(@posts) do |post|
  json.extract! post, :title, :content, :master_id
  json.url post_url(post, format: :json)
end