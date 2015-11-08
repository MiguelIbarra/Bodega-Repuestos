class CreateRepuestos < ActiveRecord::Migration
  def change
    create_table :repuestos do |t|
      t.string :codrepuesto
      t.string :nombrerepuesto
      t.integer :valorrepuesto
      t.references :equipo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
