class AddAlojamientoToArrendatario < ActiveRecord::Migration[5.1]
  def change
    add_reference :arrendatarios, :alojamiento, foreign_key: true
  end
end
