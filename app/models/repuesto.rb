class Repuesto < ActiveRecord::Base
  belongs_to :equipo

  validates :codrepuesto, presence: true
  validates :nombrerepuesto, presence: true
  validates :valorrepuesto, presence: true
  validates :equipo_id, presence: true
end
