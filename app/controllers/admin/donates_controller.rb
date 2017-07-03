class Admin::DonatesController < Admin::ApplicationController
  before_action :set_donate, only: [:show, :edit, :update, :destroy]

  # GET /admin/donates
  # GET /admin/donates.json
  def index
    @donates = Donate.all.paginate(page: params[:page], per_page: 30)
  end

  # GET /admin/donates/1
  # GET /admin/donates/1.json
  def show
  end

  # GET /admin/donates/new
  def new
    @donate = Donate.new
  end

  # GET /admin/donates/1/edit
  def edit
  end

  # POST /admin/donates
  # POST /admin/donates.json
  def create
    @donate = Donate.new(donate_params)

    respond_to do |format|
      if @donate.save
        format.html { redirect_to admin_donates_path, notice: 'Donate was successfully created.' }
        format.json { render :show, status: :created, location: @donate }
      else
        format.html { render :new }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/donates/1
  # PATCH/PUT /admin/donates/1.json
  def update
    respond_to do |format|
      if @donate.update(donate_params)
        format.html { redirect_to admin_donates_path, notice: 'Donate was successfully updated.' }
        format.json { render :show, status: :ok, location: @donate }
      else
        format.html { render :edit }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/donates/1
  # DELETE /admin/donates/1.json
  def destroy
    @donate.destroy
    respond_to do |format|
      format.html { redirect_to admin_donates_path, notice: 'Donate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donate
      @donate = Donate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donate_params
      params.require(:donate).permit(:recipient_name, :file_transfer, :amount)
    end
end
