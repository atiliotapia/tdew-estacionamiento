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
  
  def vacio?
    numero_autos == 0
  end

  def ingreso
    raise EstacionamientoError, "El estacinamiento no permite el ingreso ya que no cuenta con capacidad disponible" if no_disponible?
    increment(:numero_autos)
    self
  end
  
  def salida
     raise EstacionamientoError, "El estacinamiento se encuentra vacio" if vacio?
    decrement(:numero_autos)
    self
  end

acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  address
end

  
end
