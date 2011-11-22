class Estacionamiento < ActiveRecord::Base
  
  def disponible?
    numero_autos < capacidad_total
  end
  
  def no_disponible?
    numero_autos == capacidad_total
  end
  
  def ingreso
    raise "Estacionamiento esta lleno" if no_disponible?
    increment(:numero_autos)
    assert_raise Exception
  end
  
  def salida
    decrement(:numero_autos)
  end

  
end
