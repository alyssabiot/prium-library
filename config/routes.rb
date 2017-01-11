Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users
  resources :books
  resources :bookings, only: [ :new, :create, :destroy ]
end
