Rails.application.routes.draw do
  
  root "welcome#index"

  resources :trains do
    resources :carriages, shallow: true
  end
  resources :railway_stations do
    patch :update_position, :update_arrive_time, :update_depart_time, on: :member
  end
  resources :routes
  resource  :searches, only: [:new, :show, :edit]
end
