json.array!(@available_foodstuff) do |available_foodstuff|
  json.extract! available_foodstuff, :id
  json.url available_foodstuff_url(available_foodstuff, format: :json)
end
