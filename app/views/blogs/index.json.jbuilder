json.array!(@blogs) do |blog|
  json.extract! blog, :title, :user_id, :image, :body
  json.url blog_url(blog, format: :json)
end