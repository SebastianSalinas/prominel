require 'test_helper'

class ObrerosControllerTest < ActionController::TestCase
  setup do
    @obrero = obreros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obreros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obrero" do
    assert_difference('Obrero.count') do
      post :create, obrero: { email: @obrero.email, lat_hogar: @obrero.lat_hogar, lon_hogar: @obrero.lon_hogar, nacimiento: @obrero.nacimiento, nombre: @obrero.nombre }
    end

    assert_redirected_to obrero_path(assigns(:obrero))
  end

  test "should show obrero" do
    get :show, id: @obrero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obrero
    assert_response :success
  end

  test "should update obrero" do
    patch :update, id: @obrero, obrero: { email: @obrero.email, lat_hogar: @obrero.lat_hogar, lon_hogar: @obrero.lon_hogar, nacimiento: @obrero.nacimiento, nombre: @obrero.nombre }
    assert_redirected_to obrero_path(assigns(:obrero))
  end

  test "should destroy obrero" do
    assert_difference('Obrero.count', -1) do
      delete :destroy, id: @obrero
    end

    assert_redirected_to obreros_path
  end
end
