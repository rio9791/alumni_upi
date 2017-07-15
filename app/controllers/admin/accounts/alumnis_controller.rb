class Admin::Accounts::AlumnisController < Admin::ApplicationController
  before_action :set_alumni, only: [:show, :edit, :update, :destroy, :new_password, :change_password]

  # GET /admin/accounts/alumnis
  # GET /admin/accounts/alumnis.json
  def index
    @accounts = Account.alumni.paginate(:page => params[:page], :per_page => 50)
  end

  # GET /admin/accounts/alumnis/1
  # GET /admin/accounts/alumnis/1.json
  def show
  end

  # GET /admin/accounts/alumnis/new
  def new
    @account = Account.new
  end

  # GET /admin/accounts/alumnis/1/edit
  def edit
  end

  def new_password; end

  def change_password
    respond_to do |format|
      if @account.update(alumni_password_params)
        format.html { redirect_to admin_accounts_alumnis_path, notice: 'Alumni password was successfully updated.' }
        format.json { render :index, status: :ok, location: @account }
      else
        format.html { render :new_password }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /admin/accounts/alumnis
  # POST /admin/accounts/alumnis.json
  def create
    @account = Account.new(alumnis_params)

    respond_to do |format|
      if @account.save
        @account.add_role 'alumni'
        format.html { redirect_to admin_accounts_alumnis_path, notice: 'Alumni was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/accounts/alumnis/1
  # PATCH/PUT /admin/accounts/alumnis/1.json
  def update
    respond_to do |format|
      if @account.update(alumnis_params)
        format.html { redirect_to admin_accounts_alumnis_path, notice: 'Alumni was successfully updated.' }
        format.json { render :index, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/accounts/alumnis/1
  # DELETE /admin/accounts/alumnis/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to admin_accounts_alumnis_path, notice: 'Alumni was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni
      @account = Account.alumni.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumnis_params
      params.require(:account).permit(:email, alumni_attributes: [:full_name, :nickname,
        :sex, :birth_place, :dob, :address_origin, :address_domicile, :occupation, :cellphone, :bbm, :line_id, :facebook,
        :website, :twitter, :youtube, family_attributes: [:father_name, :father_birthplace, :father_dob, :father_last_education,
          :father_occupation, :father_address, :mother_name, :mother_birthplace, :mother_dob, :mother_last_education, :mother_occupation,
           :mother_address, :number_of_sibling, :sibling_index], college_attributes: [:join_year, :basic_training, :intermediate_training,
             :advanced_training, :senior_course, :commissariat, :korkom, :branch, :badko, :pb, trainings_attributes: [:id, :name,
               :_destroy], organizations_attributes: [:id, :name, :position, :description, :_destroy]],
               previous_education_attributes: [:elementary_school, :junior_high_school, :senior_high_school], university_educations_attributes: [:id, :university_name, :faculty, :major, :year, :graduate, :_destroy]])
    end

    def alumni_password_params
      params.require(:account).permit(:password, :password_confirmation)
    end
end
