Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      get :top
      # get "restaurants/top" to: restaurants#top
    end
    member do
      get :chef
      # chef_restaurant  GET  /restaurants/:id/chef
    end
  end

  resources :reviews, only: [:destroy]
end
