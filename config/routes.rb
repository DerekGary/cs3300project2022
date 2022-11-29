Rails.application.routes.draw do
  devise_for :users
  #root "projects#index"
  authenticated do
    root "projects#index", as: :authenticated_root
  end

  unauthenticated do
    root to: "home#index"
    resources :projects
  end
end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
