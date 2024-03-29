Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index show new create]

  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end

end
