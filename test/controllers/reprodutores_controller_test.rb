require 'test_helper'

class ReprodutoresControllerTest < ActionController::TestCase
  setup do
    @reprodutor = reprodutores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reprodutores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reprodutor" do
    assert_difference('Reprodutor.count') do
      post :create, reprodutor: {  }
    end

    assert_redirected_to reprodutor_path(assigns(:reprodutor))
  end

  test "should show reprodutor" do
    get :show, id: @reprodutor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reprodutor
    assert_response :success
  end

  test "should update reprodutor" do
    patch :update, id: @reprodutor, reprodutor: {  }
    assert_redirected_to reprodutor_path(assigns(:reprodutor))
  end

  test "should destroy reprodutor" do
    assert_difference('Reprodutor.count', -1) do
      delete :destroy, id: @reprodutor
    end

    assert_redirected_to reprodutores_path
  end
end
