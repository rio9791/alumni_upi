class Admin::Accounts::FacultiesController < Admin::ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]

  # GET /admin/accounts/faculties
  # GET /admin/accounts/faculties.json
  def index
    @accounts = Account.faculty
  end

  # GET /admin/accounts/faculties/1
  # GET /admin/accounts/faculties/1.json
  def show
  end

  # GET /admin/accounts/faculties/new
  def new
    @account = Account.new
  end

  # GET /admin/accounts/faculties/1/edit
  def edit
  end

  # POST /admin/accounts/faculties
  # POST /admin/accounts/faculties.json
  def create
    @account = Account.new(faculty_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Faculty was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/accounts/faculties/1
  # PATCH/PUT /admin/accounts/faculties/1.json
  def update
    respond_to do |format|
      if @account.update(admin_accounts_faculty_params)
        format.html { redirect_to @account, notice: 'Faculty was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/accounts/faculties/1
  # DELETE /admin/accounts/faculties/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to admin_accounts_faculties_url, notice: 'Faculty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @account = Account.faculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_params
      params.require(:account).permit()
    end
end
