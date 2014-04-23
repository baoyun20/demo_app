require 'test_helper'

class MicropsotsControllerTest < ActionController::TestCase
  setup do
    @micropsot = micropsots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropsots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropsot" do
    assert_difference('Micropsot.count') do
      post :create, micropsot: { content: @micropsot.content, user_id: @micropsot.user_id }
    end

    assert_redirected_to micropsot_path(assigns(:micropsot))
  end

  test "should show micropsot" do
    get :show, id: @micropsot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropsot
    assert_response :success
  end

  test "should update micropsot" do
    patch :update, id: @micropsot, micropsot: { content: @micropsot.content, user_id: @micropsot.user_id }
    assert_redirected_to micropsot_path(assigns(:micropsot))
  end

  test "should destroy micropsot" do
    assert_difference('Micropsot.count', -1) do
      delete :destroy, id: @micropsot
    end

    assert_redirected_to micropsots_path
  end
end
