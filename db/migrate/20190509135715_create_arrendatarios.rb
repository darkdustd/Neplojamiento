class CreateArrendatarios < ActiveRecord::Migration[5.1]
  def change
    create_table :arrendatarios do |t|
      t.string :nombre
      t.string :telefono
      t.string :correo
      t.string :email
      t.string :cc

      t.timestamps
    end
  end
end
