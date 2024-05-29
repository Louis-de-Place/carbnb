Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/success", to: "pages#success", as: :success

  resources :offers, except: [:edit] do
    resources :bookings, only: [:new, :create,]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:destroy]
end
