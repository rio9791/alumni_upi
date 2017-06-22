require 'test_helper'

class Admin::Accounts::CompaniesControllerTest < ActionController::TestCase
  setup do
    @admin_accounts_companies = admin_accounts_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_accounts_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Account.company.count') do
      post :create, admin_accounts_companies: {  }
    end

    assert_redirected_to admin_accounts_companies_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: {  }
    assert_redirected_to admin_accounts_companies_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to admin_accounts_companies_path
  end
end
