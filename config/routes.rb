Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :heroes, only: [:new, :edit, :update, :create, :index, :show, :destroy] do
    resources :bookings, only: [:create, :update]
  end
   resources :bookings, only: [ ] do
    resources :reviews, only: [:create, :new]
   end

  resources :users, only: [:show] do
    resources :dashboard, only: [:index]
  end

end
