Rails.application.routes.draw do
  
  root "welcome#index"

  #root "railway_stations#index"
  resources :trains
  resources :railway_stations
  resources :routes
  resources :carriages
end
