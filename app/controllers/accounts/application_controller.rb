class Accounts::ApplicationController < ActionController::Base
  layout 'backend'
  include ApplicationHelper
  before_action :authenticate_account

  def authenticate_account
    if current_account && !current_account.has_role?(:admin)
      return true
    else
      redirect_to root_path
      flash[:error] = 'You are not allowed to access admin page.'
    end
  end
end
