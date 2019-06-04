Rails.application.routes.draw do
  resources :tickets, only: [:index, :show, :create]
  post 'users/login', to: 'auth#authenticate'
end
