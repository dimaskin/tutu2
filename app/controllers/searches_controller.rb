class SearchesController < ApplicationController

  def new
    @search = Search.new
    @railway_stations = RailwayStation.pluck(:name)
  end

  def create
    @search = Search.new(search_param)
    @search.search_data
    @start_rws  = RailwayStation.find(search_param[:start_rws])
    @finish_rws = RailwayStation.find(search_param[:finish_rws])
    render :show
  end

  def show
    @search = Search.find(params[:id])
  end

  private
  def search_param
    params.require(:search).permit(:start_rws, :finish_rws)
  end
end
