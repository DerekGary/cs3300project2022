Rails.application.routes.draw do
  #root "projects#index"
  root to: "home#index"
  resources :projects
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
