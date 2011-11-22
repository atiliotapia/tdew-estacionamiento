class Estacionamiento < ActiveRecord::Base
  
  def porcentaje
    numero_autos * 100.0 / capacidad_total
  end
  
  def disponible?
    numero_autos < capacidad_total
  end
  
  def no_disponible?
    numero_autos == capacidad_total
  end
  
  def ingreso
    return false if no_disponible?
    increment(:numero_autos)
  end
  
  def salida
    decrement(:numero_autos)
  end

  
end
