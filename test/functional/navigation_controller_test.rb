require 'test_helper'

class NavigationControllerTest < ActionController::TestCase

  test "muestra los estacionamientos en el home" do
    get :home
    assert_response :success
    assert_not_nil assigns(:estacionamientos)
  end

end
