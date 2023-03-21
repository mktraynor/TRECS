Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :recs do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :pins, only: [:new, :create]
  end

  resources :users, only: [:show, :index]

  resources :boards

  resources :pins, only: [:edit, :update, :destroy]

  resources :categories, only: [:show, :create, :new]

end
