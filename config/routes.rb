Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users
  resources :books
  resources :bookings, only: [ :index, :new, :create, :destroy ]
end
