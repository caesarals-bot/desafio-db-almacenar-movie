Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, :series, :documentry_films, 
    only:[:show, :index, :new, :create, :edit, :update]
end
