class NewsController < ApplicationController

  def index
    @news = News.displays.paginate(page: params[:page], per_page: 15)
  end

  def show
    @news = News.find_by_slug(params[:id])
  end
end
