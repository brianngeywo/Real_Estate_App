class HomeController < ApplicationController
  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result(distinct: true)
    render :index
  end

  def landing
  end

  def infor
  end
end
