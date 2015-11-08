class CreateRepuestoBolets < ActiveRecord::Migration
  def change
    create_table :repuesto_bolets do |t|
      t.references :repuesto, index: true, foreign_key: true
      t.references :bolet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
