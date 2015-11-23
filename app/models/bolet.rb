class Bolet < ActiveRecord::Base
  has_many :repuesto_bolet
  has_many :repuesto, :through => :repuesto_bolet
  belongs_to :cliente
  validates :numboleta, presence: true
  validates :fecha, presence: true
  validates :cliente_id, presence: true

end
