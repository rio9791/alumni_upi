require 'test_helper'

class Admin::Accounts::FacultiesControllerTest < ActionController::TestCase
  setup do
    @admin_accounts_faculty = admin_accounts_faculties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_accounts_faculties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_accounts_faculty" do
    assert_difference('Account.faculty.count') do
      post :create, admin_accounts_faculty: {  }
    end

    assert_redirected_to admin_accounts_faculty_path(assigns(:admin_accounts_faculty))
  end

  test "should show admin_accounts_faculty" do
    get :show, id: @admin_accounts_faculty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_accounts_faculty
    assert_response :success
  end

  test "should update admin_accounts_faculty" do
    patch :update, id: @admin_accounts_faculty, admin_accounts_faculty: {  }
    assert_redirected_to admin_accounts_faculty_path(assigns(:admin_accounts_faculty))
  end

  test "should destroy admin_accounts_faculty" do
    assert_difference('Account.faculty.count', -1) do
      delete :destroy, id: @admin_accounts_faculty
    end

    assert_redirected_to admin_accounts_faculties_path
  end
end
