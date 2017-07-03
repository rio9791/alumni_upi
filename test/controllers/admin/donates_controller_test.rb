require 'test_helper'

class Admin::DonatesControllerTest < ActionController::TestCase
  setup do
    @admin_donate = admin_donates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_donates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_donate" do
    assert_difference('Admin::Donate.count') do
      post :create, admin_donate: {  }
    end

    assert_redirected_to admin_donate_path(assigns(:admin_donate))
  end

  test "should show admin_donate" do
    get :show, id: @admin_donate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_donate
    assert_response :success
  end

  test "should update admin_donate" do
    patch :update, id: @admin_donate, admin_donate: {  }
    assert_redirected_to admin_donate_path(assigns(:admin_donate))
  end

  test "should destroy admin_donate" do
    assert_difference('Admin::Donate.count', -1) do
      delete :destroy, id: @admin_donate
    end

    assert_redirected_to admin_donates_path
  end
end
