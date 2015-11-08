class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :correo
      t.integer :fono

      t.timestamps null: false
    end
  end
end
