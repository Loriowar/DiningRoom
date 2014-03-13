json.array!(@production_plans) do |production_plan|
  json.extract! production_plan, :id
  json.url production_plan_url(production_plan, format: :json)
end
