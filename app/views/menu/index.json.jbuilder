json.array!(@menu) do |menu|
  json.extract! menu, :id
  json.url menu_url(menu, format: :json)
end
