Rails.application.routes.draw do
  resources :tasks
 
  get "up" => "rails/health#show", as: :rails_health_check


  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  resources :tasks
  root "tasks#index"

  # Defines the root path route ("/")
  # root "posts#index"
end