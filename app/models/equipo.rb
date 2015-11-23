class Equipo < ActiveRecord::Base
  validates :codequipo, presence: true
  validates :tipo, presence: true

end
