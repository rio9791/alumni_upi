class DonationsController < ApplicationController
  before_action :authenticate_account!, only: [:create]

  def index
    @donate = Donate.new
  end

  def create
    @donate = Donate.new(donate_params)
    respond_to do |format|
      if @donate.save
        format.html { redirect_to root_path, notice: 'Terima kasih atas donasi Anda' }
        format.json { render :index, status: :created, location: @donate }
      else
        format.html { render :index }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def donate_params
    params.require(:donate).permit(:recipient_name, :file_transfer, :amount)
  end

end
