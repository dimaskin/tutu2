class Admin::TicketsController < ApplicationController
  before_action :set_ticket, only: [ :show, :destroy, :edit, :update ]
  before_action :set_environ, only: [:update, :edit] 

  def index
    @tickets = Ticket.all
    @users   = User.all
  end

  def new  
    @ticket = Ticket.new
    @train = Train.find(params[:train_id])
    @start_station  = RailwayStation.find(params[:start_station_id])
    @finish_station = RailwayStation.find(params[:finish_station_id])
  end

  def show
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to [:admin, @ticket]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to [:admin, @ticket]
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_url
  end

  private
  def ticket_params
    params.require(:ticket).permit(:passport, :fio, :user_id, :train_id, :start_station_id, :finish_station_id )
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def set_environ
    @train = @ticket.train
    @start_station  = @ticket.start_station
    @finish_station = @ticket.finish_station
  end
end
