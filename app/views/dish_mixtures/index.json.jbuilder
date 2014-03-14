json.array!(@dish_mixtures) do |dish_mixture|
  json.extract! dish_mixture, :id
  json.url dish_mixture_url(dish_mixture, format: :json)
end
