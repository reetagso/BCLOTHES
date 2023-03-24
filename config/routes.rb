Rails.application.routes.draw do
  # get 'requests/index'
  # get 'requests/show'
  # get 'items/index'
  # get 'items/show'
  devise_for :users
  root to: 'items#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/items/:id/requests", to: "requests#new", as: :new_item_requests

  get "requests", to: "requests#index", as: :all_requests
  post "/items/:id/requests", to: "requests#create", as: :item_requests

  resources :requests, only: [:show, :new, :create, :edit, :update, :destroy] do
    collection do
      get :my_requests
    end
    resources :suggestions, only: [:new, :create]
  end

  resources :items do
    member do
      delete :delete_image_attachment
    end
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :items, only: :index
end
