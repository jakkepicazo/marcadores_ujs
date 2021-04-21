Rails.application.routes.draw do
  resources :beermarks
  resources :categories
  resources :kinds
  root 'beermarks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
