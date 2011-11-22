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
    raise EstacionamientoError, "El estacinamiento no permite el ingreso ya que no cuenta con capacidad disponible" if no_disponible?
    increment(:numero_autos)
    self
  end
  
  def salida
    decrement(:numero_autos)
    self
  end

  
end
