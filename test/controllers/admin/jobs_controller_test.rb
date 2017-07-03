require 'test_helper'

class Admin::JobsControllerTest < ActionController::TestCase
  setup do
    @admin_job = admin_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_job" do
    assert_difference('Admin::Job.count') do
      post :create, admin_job: {  }
    end

    assert_redirected_to admin_job_path(assigns(:admin_job))
  end

  test "should show admin_job" do
    get :show, id: @admin_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_job
    assert_response :success
  end

  test "should update admin_job" do
    patch :update, id: @admin_job, admin_job: {  }
    assert_redirected_to admin_job_path(assigns(:admin_job))
  end

  test "should destroy admin_job" do
    assert_difference('Admin::Job.count', -1) do
      delete :destroy, id: @admin_job
    end

    assert_redirected_to admin_jobs_path
  end
end
