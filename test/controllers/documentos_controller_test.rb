require 'test_helper'

class DocumentosControllerTest < ActionController::TestCase
  setup do
    @documento = documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento" do
    assert_difference('Documento.count') do
      post :create, documento: { centrocosto: @documento.centrocosto, cheque: @documento.cheque, chequera: @documento.chequera, cobrado: @documento.cobrado, factura: @documento.factura, fecha: @documento.fecha, nopago: @documento.nopago, nulo: @documento.nulo, oocc: @documento.oocc, plazo: @documento.plazo, proveedor: @documento.proveedor, valor: @documento.valor }
    end

    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should show documento" do
    get :show, id: @documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento
    assert_response :success
  end

  test "should update documento" do
    patch :update, id: @documento, documento: { centrocosto: @documento.centrocosto, cheque: @documento.cheque, chequera: @documento.chequera, cobrado: @documento.cobrado, factura: @documento.factura, fecha: @documento.fecha, nopago: @documento.nopago, nulo: @documento.nulo, oocc: @documento.oocc, plazo: @documento.plazo, proveedor: @documento.proveedor, valor: @documento.valor }
    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should destroy documento" do
    assert_difference('Documento.count', -1) do
      delete :destroy, id: @documento
    end

    assert_redirected_to documentos_path
  end
end
