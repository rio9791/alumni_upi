module Admin::DashboardHelper

  def is_active_path?(controller)
    params[:controller].eql?("admin/#{controller}")
  end
  
end
