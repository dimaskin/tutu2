class SearchesController < ApplicationController

  def new
    @search = Search.new
    @railway_stations = RailwayStation.pluck(:name)
  end

  def create 
    @search = Search.create(search_param)
    #render text: search_param
    #redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private
  def search_param
    params.require(:search).permit(:start_rws, :finish_rws)
  end
end
