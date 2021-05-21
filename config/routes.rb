Rails.application.routes.draw do
  resources :beers, only: [:index, :create] do
    resources :reviews, only: [:create, :index, :delete]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
