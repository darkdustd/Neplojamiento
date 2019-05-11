class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :nacionalidad
      t.string :telefono
      t.string :email
      t.string :cc

      t.timestamps
    end
  end
end
