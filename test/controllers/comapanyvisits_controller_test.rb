require 'test_helper'

class ComapanyvisitsControllerTest < ActionController::TestCase
  setup do
    @comapanyvisit = comapanyvisits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comapanyvisits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comapanyvisit" do
    assert_difference('Comapanyvisit.count') do
      post :create, comapanyvisit: { company_id: @comapanyvisit.company_id, description: @comapanyvisit.description, on: @comapanyvisit.on }
    end

    assert_redirected_to comapanyvisit_path(assigns(:comapanyvisit))
  end

  test "should show comapanyvisit" do
    get :show, id: @comapanyvisit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comapanyvisit
    assert_response :success
  end

  test "should update comapanyvisit" do
    patch :update, id: @comapanyvisit, comapanyvisit: { company_id: @comapanyvisit.company_id, description: @comapanyvisit.description, on: @comapanyvisit.on }
    assert_redirected_to comapanyvisit_path(assigns(:comapanyvisit))
  end

  test "should destroy comapanyvisit" do
    assert_difference('Comapanyvisit.count', -1) do
      delete :destroy, id: @comapanyvisit
    end

    assert_redirected_to comapanyvisits_path
  end
end
