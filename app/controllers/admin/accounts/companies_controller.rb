class Admin::Accounts::CompaniesController < Admin::ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /admin/accounts/companies
  # GET /admin/accounts/companies.json
  def index
    @accounts = Account.company
  end

  # GET /admin/accounts/companies/1
  # GET /admin/accounts/companies/1.json
  def show
  end

  # GET /admin/accounts/companies/new
  def new
    @account = Account.new
  end

  # GET /admin/accounts/companies/1/edit
  def edit
  end

  # POST /admin/accounts/companies
  # POST /admin/accounts/companies.json
  def create
    @account = Account.new(company_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/accounts/companies/1
  # PATCH/PUT /admin/accounts/companies/1.json
  def update
    respond_to do |format|
      if @account.update(company_params)
        format.html { redirect_to @account, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/accounts/companies/1
  # DELETE /admin/accounts/companies/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to admin_accounts_companies_path, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @account = Account.company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:account).permit()
    end
end
