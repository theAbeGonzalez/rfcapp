json.array!(@bills) do |bill|
  json.extract! bill, :id, :rfc, :nombre, :apellido_paterno, :apellido_materno, :numero_exterior, :colonia, :localidad, :codigo_postal, :calle, :numero_interior, :municipio, :entidad_federal, :correo, :telefono
  json.url bill_url(bill, format: :json)
end
