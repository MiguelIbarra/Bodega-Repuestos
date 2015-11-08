json.array!(@repuesto_bolets) do |repuesto_bolet|
  json.extract! repuesto_bolet, :id, :repuesto_id, :bolet_id
  json.url repuesto_bolet_url(repuesto_bolet, format: :json)
end
