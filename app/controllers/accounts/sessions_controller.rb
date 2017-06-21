class Accounts::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    account = Account.find_by_email(params[:email])
    if account && account.authenticate(params[:password])
      session[:account] = account.id
      sign_in account
      unless account.has_role?(:admin)
        redirect_to root_path
      else
        redirect_to admin_dashboard_index_path
      end
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
