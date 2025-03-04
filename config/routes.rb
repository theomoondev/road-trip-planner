Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "journeys#index"

  get "/destinations", to: "destinations#index", as: :destinations
  get "/destinations/:id", to: "destinations#show", as: :destination
  post "/destinations", to: "destinations#create"
  patch "/destinations/:id", to: "destinations#update"
  delete "/destinations/:id", to: "destinations#destroy"

  get "/journeys", to: "journeys#index", as: :journeys
  get "/journeys/:id", to: "journeys#show", as: :journey
  post "/journeys", to: "journeys#create"
  patch "/journeys/:id", to: "journeys#update"
  delete "/journeys/:id", to: "journeys#destroy"
end
