class Admin::CarriagesController < Admin::BaseController
    before_action :set_carriage, only: [:show, :edit, :update, :destroy]
    before_action :set_train, only: [:new, :create]
 
    def new
      @carriage = Carriage.new
    end

    def show
    end
    
    def edit
    end
  
    def create
      @carriage = @train.carriages.new(carriage_params)
  
      if @carriage.save
        redirect_to @train
      else
        render :new
      end
    end
  
    def update
      if @carriage.update(carriage_params)
        redirect_to @carriage.becomes(Carriage)
      else
        render :edit
      end
    end
  
  
    private

    def set_train
      @train = Train.find(params[:train_id])
    end

    def set_carriage
      @carriage = Carriage.find(params[:id])
    end
  
    def carriage_params
      params.require(:carriage).permit(:type_carriage, :train_id, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :seat_places)
    end    
  end
  