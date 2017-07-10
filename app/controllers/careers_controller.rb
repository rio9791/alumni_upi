class CareersController < ApplicationController
  before_action :authenticate_account!
  before_action :set_job, only: [:show]

  def index
    unless params[:utf8].present?
      @jobs = JobVacancy.available.paginate(page: params[:page], per_page: 10)
    else
      @jobs = JobVacancy.search_with_params(params).paginate(page: params[:page], per_page: 10)
    end
  end

  def show; end

  private

  def set_job
    @job = JobVacancy.find_by_slug(params[:id])
  end

end
