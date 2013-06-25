require 'test_helper'

class ApuntesControllerTest < ActionController::TestCase
  setup do
    @apunte = apuntes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apuntes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apunte" do
    assert_difference('Apunte.count') do
      post :create, apunte: { contenido: @apunte.contenido, titulo: @apunte.titulo }
    end

    assert_redirected_to apunte_path(assigns(:apunte))
  end

  test "should show apunte" do
    get :show, id: @apunte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apunte
    assert_response :success
  end

  test "should update apunte" do
    put :update, id: @apunte, apunte: { contenido: @apunte.contenido, titulo: @apunte.titulo }
    assert_redirected_to apunte_path(assigns(:apunte))
  end

  test "should destroy apunte" do
    assert_difference('Apunte.count', -1) do
      delete :destroy, id: @apunte
    end

    assert_redirected_to apuntes_path
  end
end
