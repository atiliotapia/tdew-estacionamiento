require 'test_helper'

class EstacionamientoTest < ActiveSupport::TestCase
  test "estacionamiento vacio tiene 0 autos" do
    assert_equal 0, estacionamientos(:estacionamiento_vacio).numero_autos
  end
  
  test "ingreso de autos" do
    assert_equal 1, estacionamientos(:estacionamiento_vacio).ingreso.numero_autos
  end
  
  test "salida de autos" do
    assert_equal 9, e = estacionamientos(:estacionamiento_lleno).salida.numero_autos
  end  
  
  test "porcentaje capacidad" do
    assert_equal 10.0, estacionamientos(:estacionamiento_vacio).ingreso.porcentaje
  end
  
  test "estacionamiento lleno esta no disponible" do
    e = estacionamientos(:estacionamiento_vacio)
    10.times { e.ingreso }
    assert e.no_disponible?, 'el estacionamiento se ha llenado'
  end
  
  test "estacionamiento lleno no permite ingreso" do
    assert_raise EstacionamientoError do
      b = estacionamientos(:estacionamiento_lleno).ingreso
    end
  end
  
  test "estacionamiento vacio no permite salida" do
  end
  
end