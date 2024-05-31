Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard", as: :dashboard

  resources :offers, except: [:edit] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:destroy]
  patch "/booking/:id", to: "bookings#status_update", as: :status_update
end
