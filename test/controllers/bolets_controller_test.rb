require 'test_helper'

class BoletsControllerTest < ActionController::TestCase
  setup do
    @bolet = bolets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolet" do
    assert_difference('Bolet.count') do
      post :create, bolet: { cliente_id: @bolet.cliente_id, fecha: @bolet.fecha, numboleta: @bolet.numboleta }
    end

    assert_redirected_to bolet_path(assigns(:bolet))
  end

  test "should show bolet" do
    get :show, id: @bolet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bolet
    assert_response :success
  end

  test "should update bolet" do
    patch :update, id: @bolet, bolet: { cliente_id: @bolet.cliente_id, fecha: @bolet.fecha, numboleta: @bolet.numboleta }
    assert_redirected_to bolet_path(assigns(:bolet))
  end

  test "should destroy bolet" do
    assert_difference('Bolet.count', -1) do
      delete :destroy, id: @bolet
    end

    assert_redirected_to bolets_path
  end
end
