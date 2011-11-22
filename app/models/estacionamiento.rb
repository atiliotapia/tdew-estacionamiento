class Estacionamiento < ActiveRecord::Base
  
  def disponible?
    numero_autos < capacidad_total
  end
  
  def ingreso
    #numero_autos += 1
  end
  
end
