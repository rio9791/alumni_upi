class Admin::ApplicationController < ActionController::Base
  layout 'backend'
  include ApplicationHelper
  before_action :authenticate_admin

  def authenticate_admin
    if current_account && current_account.has_role?(:admin)
      return true
    else
      redirect_to root_path
      flash[:error] = 'You are not allowed to access admin page.'
    end
  end
end
