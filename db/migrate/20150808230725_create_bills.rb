class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :rfc
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :numero_exterior
      t.string :colonia
      t.string :localidad
      t.string :codigo_postal
      t.string :calle
      t.string :numero_interior
      t.string :municipio
      t.string :entidad_federal
      t.string :correo
      t.string :telefono

      t.timestamps null: false
    end
  end
end
