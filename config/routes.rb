Rails.application.routes.draw do
  resources :beers, only: [:index] do
    resources :reviews, only: [:create, :index]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
