require 'test_helper'

class RepuestoBoletsControllerTest < ActionController::TestCase
  setup do
    @repuesto_bolet = repuesto_bolets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repuesto_bolets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repuesto_bolet" do
    assert_difference('RepuestoBolet.count') do
      post :create, repuesto_bolet: { bolet_id: @repuesto_bolet.bolet_id, repuesto_id: @repuesto_bolet.repuesto_id }
    end

    assert_redirected_to repuesto_bolet_path(assigns(:repuesto_bolet))
  end

  test "should show repuesto_bolet" do
    get :show, id: @repuesto_bolet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repuesto_bolet
    assert_response :success
  end

  test "should update repuesto_bolet" do
    patch :update, id: @repuesto_bolet, repuesto_bolet: { bolet_id: @repuesto_bolet.bolet_id, repuesto_id: @repuesto_bolet.repuesto_id }
    assert_redirected_to repuesto_bolet_path(assigns(:repuesto_bolet))
  end

  test "should destroy repuesto_bolet" do
    assert_difference('RepuestoBolet.count', -1) do
      delete :destroy, id: @repuesto_bolet
    end

    assert_redirected_to repuesto_bolets_path
  end
end
