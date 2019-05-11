json.extract! estudiante, :id, :nombre, :nacionalidad, :telefono, :email, :cc, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
