Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :bookings, only: [:index]
  end
  resources :bikes do
    resources :bookings, only: [:index, :new, :create]
  end
end
