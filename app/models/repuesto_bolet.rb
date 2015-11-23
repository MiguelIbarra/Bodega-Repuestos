class RepuestoBolet < ActiveRecord::Base
  belongs_to :repuesto
  belongs_to :bolet
  validates :repuesto_id, presence: true
  validates :bolet_id, presence: true
  

end
