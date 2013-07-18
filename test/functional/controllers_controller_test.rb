require 'test_helper'

class ControllersControllerTest < ActionController::TestCase
  setup do
    @controller = controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controller" do
    assert_difference('Controller.count') do
      post :create, controller: { User: @controller.User, current_sign_in_at: @controller.current_sign_in_at, current_sign_in_ip: @controller.current_sign_in_ip, email: @controller.email, encrypted_password: @controller.encrypted_password, last_sign_in_at: @controller.last_sign_in_at, last_sign_in_ip: @controller.last_sign_in_ip, remember_created_at: @controller.remember_created_at, reset_password_sent_at.datetime: @controller.reset_password_sent_at.datetime, reset_password_token: @controller.reset_password_token, sign_in_count: @controller.sign_in_count }
    end

    assert_redirected_to controller_path(assigns(:controller))
  end

  test "should show controller" do
    get :show, id: @controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controller
    assert_response :success
  end

  test "should update controller" do
    put :update, id: @controller, controller: { User: @controller.User, current_sign_in_at: @controller.current_sign_in_at, current_sign_in_ip: @controller.current_sign_in_ip, email: @controller.email, encrypted_password: @controller.encrypted_password, last_sign_in_at: @controller.last_sign_in_at, last_sign_in_ip: @controller.last_sign_in_ip, remember_created_at: @controller.remember_created_at, reset_password_sent_at.datetime: @controller.reset_password_sent_at.datetime, reset_password_token: @controller.reset_password_token, sign_in_count: @controller.sign_in_count }
    assert_redirected_to controller_path(assigns(:controller))
  end

  test "should destroy controller" do
    assert_difference('Controller.count', -1) do
      delete :destroy, id: @controller
    end

    assert_redirected_to controllers_path
  end
end
