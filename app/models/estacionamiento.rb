class Estacionamiento < ActiveRecord::Base
  
  def disponible?
    numero_autos < capacidad_total
  end
  
  def no_disponible?
    numero_autos == capacidad_total
  end
  
  def ingreso
    increment(:numero_autos)
  end
  
  def salida
  end
  
end
