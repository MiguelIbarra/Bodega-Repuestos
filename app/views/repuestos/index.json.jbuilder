json.array!(@repuestos) do |repuesto|
  json.extract! repuesto, :id, :codrepuesto, :nombrerepuesto, :valorrepuesto, :equipo_id
  json.url repuesto_url(repuesto, format: :json)
end
