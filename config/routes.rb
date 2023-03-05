Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :recs do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :pins, only: [:new, :create]
  end

  resources :users, only: [:show, :index] do
    resources :boards, only: [:show, :index]
  end

  resources :boards, only: [:new, :create, :edit, :update, :destroy]

  resources :pins, only: [:edit, :update, :destroy]

  resources :categories, only: [:show]

end
