Rails.application.routes.draw do
  
  get 'welcome/index'

  #root "railway_stations#index"
  resources :trains
  resources :railway_stations

end
