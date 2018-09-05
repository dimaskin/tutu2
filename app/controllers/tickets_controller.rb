class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect_to_admin 
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  
  def index
    @tickets = current_user.tickets.all
  end

  def show
  end

  def new
    @ticket = Ticket.new(ticket_params)
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)
    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: "Билет удален"
  end

  private

  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :start_station_id, :finish_station_id, :fio, :passport)
  end
  
  def redirect_to_admin
    redirect_to admin_tickets_url if current_user.admin?    
  end
end