Rails.application.routes.draw do
  get "pages/home"
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get '/site.webmanifest', to: 'rails/pwa#manifest', as: :webmanifest

  # Defines the root path route ("/")
  # root "posts#index"

  # Ruta para el formulario de contacto
  resources :contacts, only: [:new, :create]

  # Ruta para la página de contacto
  get 'contact', to: 'contacts#new'

  # Ruta para la página de productos
  get 'products', to: 'products#prodacts'
end
