class CreateBolets < ActiveRecord::Migration
  def change
    create_table :bolets do |t|
      t.integer :numboleta
      t.date :fecha
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
