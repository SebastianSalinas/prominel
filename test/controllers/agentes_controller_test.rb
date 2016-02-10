require 'test_helper'

class AgentesControllerTest < ActionController::TestCase
  setup do
    @agente = agentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agente" do
    assert_difference('Agente.count') do
      post :create, agente: { email: @agente.email, fono: @agente.fono, nombre: @agente.nombre, vendedor: @agente.vendedor }
    end

    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should show agente" do
    get :show, id: @agente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agente
    assert_response :success
  end

  test "should update agente" do
    patch :update, id: @agente, agente: { email: @agente.email, fono: @agente.fono, nombre: @agente.nombre, vendedor: @agente.vendedor }
    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should destroy agente" do
    assert_difference('Agente.count', -1) do
      delete :destroy, id: @agente
    end

    assert_redirected_to agentes_path
  end
end
