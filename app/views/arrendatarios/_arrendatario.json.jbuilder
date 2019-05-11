json.extract! arrendatario, :id, :nombre, :telefono, :correo, :email, :cc, :created_at, :updated_at
json.url arrendatario_url(arrendatario, format: :json)
