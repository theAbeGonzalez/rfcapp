require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { apellido_materno: @bill.apellido_materno, apellido_paterno: @bill.apellido_paterno, calle: @bill.calle, codigo_postal: @bill.codigo_postal, colonia: @bill.colonia, correo: @bill.correo, entidad_federal: @bill.entidad_federal, localidad: @bill.localidad, municipio: @bill.municipio, nombre: @bill.nombre, numero_exterior: @bill.numero_exterior, numero_interior: @bill.numero_interior, rfc: @bill.rfc, telefono: @bill.telefono }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should update bill" do
    patch :update, id: @bill, bill: { apellido_materno: @bill.apellido_materno, apellido_paterno: @bill.apellido_paterno, calle: @bill.calle, codigo_postal: @bill.codigo_postal, colonia: @bill.colonia, correo: @bill.correo, entidad_federal: @bill.entidad_federal, localidad: @bill.localidad, municipio: @bill.municipio, nombre: @bill.nombre, numero_exterior: @bill.numero_exterior, numero_interior: @bill.numero_interior, rfc: @bill.rfc, telefono: @bill.telefono }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_redirected_to bills_path
  end
end
