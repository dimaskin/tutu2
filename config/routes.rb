Rails.application.routes.draw do
  
  root "welcome#index"

  #root "railway_stations#index"
  resources :trains
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :routes
  resources :carriages
end
