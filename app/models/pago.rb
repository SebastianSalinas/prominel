class Pago < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :cliente
end
