class HomeController < ApplicationController

  def index
    @news = News.displays
    @jobs = JobVacancy.available
  end

end
