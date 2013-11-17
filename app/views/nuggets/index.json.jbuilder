json.array!(@nuggets) do |nugget|
  json.extract! nugget, :title, :body, :author_id_id, :category_id_id, :published
  json.url nugget_url(nugget, format: :json)
end
