Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  get 'articles/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
