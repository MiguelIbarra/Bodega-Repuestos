class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :codequipo
      t.string :tipo

      t.timestamps null: false
    end
  end
end
