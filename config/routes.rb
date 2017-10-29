Rails.application.routes.draw do
  
  root "railway_station#index"

  resources :railway_station

end
