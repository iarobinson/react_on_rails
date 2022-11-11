Rails.application.routes.draw do
  get '/posts/api_v1', to: 'posts#api_v1'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
