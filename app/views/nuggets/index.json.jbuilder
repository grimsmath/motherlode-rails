json.array!(@nuggets) do |nugget|
  json.extract! nugget, :title, :body, :user_id, :category_id, :published
  json.url nugget_url(nugget, format: :json)
end
