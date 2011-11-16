class Notificacione < ActiveRecord::Base
  has_many :alumnos
  belongs_to :estacionamientos
end
