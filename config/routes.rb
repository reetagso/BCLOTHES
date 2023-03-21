Rails.application.routes.draw do
  get 'requests/index'
  get 'requests/show'
  # get 'items/index'
  # get 'items/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :items, only: [ :index, :show, :new, :create, :edit, :destroy ]
  resources :requests, only: [ :index, :show, :new, :create, :edit, :destroy ]
end
