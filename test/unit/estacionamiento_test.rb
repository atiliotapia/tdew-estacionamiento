require 'test_helper'

class EstacionamientoTest < ActiveSupport::TestCase
  test "el estacionamiento esta vacio" do
    assert_equal 0, estacionamientos(:estacionamiento_vacio).numero_autos
  end
  
  test "ingreso de autos" do
    e = estacionamientos(:estacionamiento_vacio)
    e.ingreso
    assert_equal 1, e.numero_autos
  end
  
  test "salida de autos" do
  end  
  
  test "el estacionamiento se llena" do
    e = estacionamientos(:estacionamiento_vacio)
    10.times { e.ingreso }
    assert e.no_disponible?, 'el estacionamiento se ha llenado'
  end
  
  test "el estacionamiento no permite el ingreso en capacidad maxima" do
  end
  
  test "el estacionamiento no permite la salida si esta vacio" do 
  end
  
end
