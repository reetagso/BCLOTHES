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

  resources :items do
    member do
      delete :delete_image_attachment
      # resources :requests, only: [:new, :create]
    end
  end

  resources :requests do
    collection do
      get :my_requests
    end
    resources :suggestions, only: [:new, :create]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :items, only: :index
end
