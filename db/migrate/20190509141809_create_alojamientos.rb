class CreateAlojamientos < ActiveRecord::Migration[5.1]
  def change
    create_table :alojamientos do |t|
      t.string :tipo
      t.string :descripcion
      t.string :reglas
      t.string :imagen
      t.string :sitios_interes
      t.string :clasificacion
      t.float :calificacion
      t.string :cercano

      t.timestamps
    end
  end
end
