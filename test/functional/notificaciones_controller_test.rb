require 'test_helper'

class NotificacionesControllerTest < ActionController::TestCase
  setup do
    @notificacione = notificaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notificaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notificacione" do
    assert_difference('Notificacione.count') do
      post :create, notificacione: @notificacione.attributes
    end

    assert_redirected_to notificacione_path(assigns(:notificacione))
  end

  test "should show notificacione" do
    get :show, id: @notificacione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notificacione.to_param
    assert_response :success
  end

  test "should update notificacione" do
    put :update, id: @notificacione.to_param, notificacione: @notificacione.attributes
    assert_redirected_to notificacione_path(assigns(:notificacione))
  end

  test "should destroy notificacione" do
    assert_difference('Notificacione.count', -1) do
      delete :destroy, id: @notificacione.to_param
    end

    assert_redirected_to notificaciones_path
  end
end
