json.array!(@foodstuff) do |foodstuff|
  json.extract! foodstuff, :id
  json.url foodstuff_url(foodstuff, format: :json)
end
