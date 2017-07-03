class Admin::NewsController < Admin::ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /admin/news
  # GET /admin/news.json
  def index
    @news = News.all.paginate(page: params[:page], per_page: 20)
  end

  # GET /admin/news/1
  # GET /admin/news/1.json
  def show
  end

  # GET /admin/news/new
  def new
    @news = News.new
  end

  # GET /admin/news/1/edit
  def edit
  end

  # POST /admin/news
  # POST /admin/news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to admin_news_index_path, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @admin_news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/news/1
  # PATCH/PUT /admin/news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to admin_news_index_path, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/news/1
  # DELETE /admin/news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to admin_news_index_path, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :content, :visible)
    end
end
