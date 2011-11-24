class Alumno < ActiveRecord::Base
   has_many :notificaciones
end
