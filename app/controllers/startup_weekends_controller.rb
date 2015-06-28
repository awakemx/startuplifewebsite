class StartupWeekendsController < ApplicationController
  def index
    @startup_weekends = StartupWeekend.all
  end

  def show
    @startup_weekend = StartupWeekend.friendly.find(params[:id])
  end
end
