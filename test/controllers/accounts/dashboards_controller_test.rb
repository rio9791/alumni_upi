require 'test_helper'

class Accounts::DashboardsControllerTest < ActionController::TestCase
  setup do
    @accounts_dashboard = accounts_dashboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts_dashboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounts_dashboard" do
    assert_difference('Accounts::Dashboard.count') do
      post :create, accounts_dashboard: {  }
    end

    assert_redirected_to accounts_dashboard_path(assigns(:accounts_dashboard))
  end

  test "should show accounts_dashboard" do
    get :show, id: @accounts_dashboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounts_dashboard
    assert_response :success
  end

  test "should update accounts_dashboard" do
    patch :update, id: @accounts_dashboard, accounts_dashboard: {  }
    assert_redirected_to accounts_dashboard_path(assigns(:accounts_dashboard))
  end

  test "should destroy accounts_dashboard" do
    assert_difference('Accounts::Dashboard.count', -1) do
      delete :destroy, id: @accounts_dashboard
    end

    assert_redirected_to accounts_dashboards_path
  end
end
