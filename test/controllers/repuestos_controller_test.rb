require 'test_helper'

class RepuestosControllerTest < ActionController::TestCase
  setup do
    @repuesto = repuestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repuestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repuesto" do
    assert_difference('Repuesto.count') do
      post :create, repuesto: { codrepuesto: @repuesto.codrepuesto, equipo_id: @repuesto.equipo_id, nombrerepuesto: @repuesto.nombrerepuesto, valorrepuesto: @repuesto.valorrepuesto }
    end

    assert_redirected_to repuesto_path(assigns(:repuesto))
  end

  test "should show repuesto" do
    get :show, id: @repuesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repuesto
    assert_response :success
  end

  test "should update repuesto" do
    patch :update, id: @repuesto, repuesto: { codrepuesto: @repuesto.codrepuesto, equipo_id: @repuesto.equipo_id, nombrerepuesto: @repuesto.nombrerepuesto, valorrepuesto: @repuesto.valorrepuesto }
    assert_redirected_to repuesto_path(assigns(:repuesto))
  end

  test "should destroy repuesto" do
    assert_difference('Repuesto.count', -1) do
      delete :destroy, id: @repuesto
    end

    assert_redirected_to repuestos_path
  end
end
