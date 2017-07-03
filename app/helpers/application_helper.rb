module ApplicationHelper

  def is_active_path?(controller)
    params[:controller].eql?("admin/#{controller}") || params[:controller].eql?("accounts/#{controller}")
  end

  def is_accounts_path?(params)
    ['admin/accounts/alumnis', 'admin/accounts/companies', 'admin/accounts/faculties'].include?(params[:controller])
  end
  
end
