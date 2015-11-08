class AddCargoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :cargo, :string
  end
end
