json.array!(@articles) do |article|
  json.extract! article, :title, :content, :published_at
  json.url article_url(article, format: :json)
end
