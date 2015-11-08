json.array!(@bolets) do |bolet|
  json.extract! bolet, :id, :numboleta, :fecha, :cliente_id
  json.url bolet_url(bolet, format: :json)
end
