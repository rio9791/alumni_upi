class Admin::DashboardController < Admin::ApplicationController

  def index
    @alumnis = Account.alumni.size
    @jobs = JobVacancy.available.size
    @companies = Account.company.size
    @faculties = Account.faculty.size
  end

end
