json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :codequipo, :tipo
  json.url equipo_url(equipo, format: :json)
end
