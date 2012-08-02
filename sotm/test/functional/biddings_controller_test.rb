require 'test_helper'

class BiddingsControllerTest < ActionController::TestCase
  setup do
    @bidding = biddings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biddings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bidding" do
    assert_difference('Bidding.count') do
      post :create, bidding: @bidding.attributes
    end

    assert_redirected_to bidding_path(assigns(:bidding))
  end

  test "should show bidding" do
    get :show, id: @bidding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bidding
    assert_response :success
  end

  test "should update bidding" do
    put :update, id: @bidding, bidding: @bidding.attributes
    assert_redirected_to bidding_path(assigns(:bidding))
  end

  test "should destroy bidding" do
    assert_difference('Bidding.count', -1) do
      delete :destroy, id: @bidding
    end

    assert_redirected_to biddings_path
  end
end
