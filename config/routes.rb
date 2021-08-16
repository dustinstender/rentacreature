Rails.application.routes.draw do
  get 'creatures/index'
  get 'creatures/show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :creatures, only: [:index, :show] do
    resources :bookings, only: [:create, :show, :new, :edit, :update]
  end
  resources :bookings, only: [:destroy]
end
