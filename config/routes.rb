Rails.application.routes.draw do
    #get '/student/:user_id' => 'projects#display_public_view'
    get '/student/:user_id' => 'projects#index'
    
  devise_for :users
  #root "projects#index"
  authenticated do
    root "projects#index", as: :root_path
    resources :projects
  end

  unauthenticated do
    root to: "home#index"
    resources :projects
  end
end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
