require 'test_helper'

class EstacionamientoTest < ActiveSupport::TestCase
  test "el estacionamiento esta vacio" do
    assert_equal 0, estacionamientos(:estacionamiento_vacio).numero_autos
  end
  
  test "ingresa un auto al estacionamiento vacio" do
    estacionamientos(:estacionamiento_vacio).ingreso
    assert_equal 1, estacionamientos(:estacionamiento_vacio).numero_autos
  end
  
end
