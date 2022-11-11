Rails.application.routes.draw do
  resources :posts
  get 'posts#api_v1'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
