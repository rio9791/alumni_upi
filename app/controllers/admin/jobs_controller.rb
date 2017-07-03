class Admin::JobsController < Admin::ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /admin/jobs
  # GET /admin/jobs.json
  def index
    @jobs = JobVacancy.paginate(:page => params[:page], :per_page => 50)
  end

  # GET /admin/jobs/1
  # GET /admin/jobs/1.json
  def show
  end

  # GET /admin/jobs/new
  def new
    @job = JobVacancy.new
  end

  # GET /admin/jobs/1/edit
  def edit
  end

  # POST /admin/jobs
  # POST /admin/jobs.json
  def create
    @job = JobVacancy.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to admin_jobs_path, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/jobs/1
  # PATCH/PUT /admin/jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to admin_jobs_path, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/jobs/1
  # DELETE /admin/jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to admin_jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = JobVacancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job_vacancy).permit(:position, :description, :due_date, :visible, :company_name, :level, :qualification, :salary_range_min, :salary_range_max, :location, :job_type, :negotiable_salary, :about_company)
    end
end
