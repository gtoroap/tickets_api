Rails.application.routes.draw do
  resources :tickets, only: [:index, :show]
  post 'users/login', to: 'auth#authenticate'
end
