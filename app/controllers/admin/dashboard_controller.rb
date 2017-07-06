class Admin::DashboardController < Admin::ApplicationController

  def index
    @alumnis = Account.alumni.size
    @jobs = JobVacancy.available.size
    @companies = Account.company.size
    @faculties = Account.faculty.size
  end

  def get_donations
    respond_to do |format|
      format.json {render json: {donations: Donate.get_json_data.to_json, layout: false}}
    end
  end

end
