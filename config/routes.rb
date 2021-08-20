Rails.application.routes.draw do
  devise_for :users
  get 'creatures/index'
  get 'creatures/show'
  get 'creatures/search', to: 'creatures#search'
  get 'creatures/shsp', to: 'creatures#search_species'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :creatures, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:create, :show, :new]
  end
  resources :bookings, only: [:index, :destroy, :edit]
end
