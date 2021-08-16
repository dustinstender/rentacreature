Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :show] do
    resources :bookings, only: [:create, :show, :new, :destroy]
  end
end
