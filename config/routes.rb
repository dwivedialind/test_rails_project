Rails.application.routes.draw do
  resources :articles
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
   root "pages#home"

   get 'about', to: 'pages#about'
end
