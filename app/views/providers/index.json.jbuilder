json.array!(@providers) do |provider|
  json.extract! provider, :id
  json.url provider_url(provider, format: :json)
end
