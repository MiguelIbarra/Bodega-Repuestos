class Cliente < ActiveRecord::Base
  validates :rut, presence: true
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :direccion, presence: true
  validates :correo, presence: true
  validates :fono, presence: true

end
