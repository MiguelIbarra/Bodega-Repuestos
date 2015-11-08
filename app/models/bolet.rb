class Bolet < ActiveRecord::Base
  has_many :repuesto_bolet
  has_many :repuesto, :through => :repuesto_bolet
end


class Bolet < ActiveRecord::Base
  belongs_to :cliente
end
