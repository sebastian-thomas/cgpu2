require 'test_helper'

class CompanyvisitsControllerTest < ActionController::TestCase
  setup do
    @companyvisit = companyvisits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companyvisits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companyvisit" do
    assert_difference('Companyvisit.count') do
      post :create, companyvisit: { company_id: @companyvisit.company_id, description: @companyvisit.description, on: @companyvisit.on }
    end

    assert_redirected_to companyvisit_path(assigns(:companyvisit))
  end

  test "should show companyvisit" do
    get :show, id: @companyvisit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companyvisit
    assert_response :success
  end

  test "should update companyvisit" do
    patch :update, id: @companyvisit, companyvisit: { company_id: @companyvisit.company_id, description: @companyvisit.description, on: @companyvisit.on }
    assert_redirected_to companyvisit_path(assigns(:companyvisit))
  end

  test "should destroy companyvisit" do
    assert_difference('Companyvisit.count', -1) do
      delete :destroy, id: @companyvisit
    end

    assert_redirected_to companyvisits_path
  end
end
