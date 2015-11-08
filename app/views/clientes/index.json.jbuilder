json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :apellido, :direccion, :correo, :fono
  json.url cliente_url(cliente, format: :json)
end
