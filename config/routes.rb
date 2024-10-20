Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "doctors/index"
  resources :appointments
  devise_for :doctors
  resources :departments
  devise_for :patients
  get "pages/home"
  get "pages/about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "/doctors" => "doctors#index", as: "doctors"
  get "/doctor/:id" => "doctors#show", as: "doctor"
  get "/faqs" => "pages#faq", as: "faq"
  get "/about" => "pages#about", as: "about"

  # Defines the root path route ("/")
  root "pages#home"
end
