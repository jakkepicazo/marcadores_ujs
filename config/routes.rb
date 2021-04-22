Rails.application.routes.draw do
  get 'home/index'
  resources :beermarks
  resources :categories
  resources :kinds
  root 'beermarks#index'
  get 'categories/:id/api', to: 'categories#api', as: 'api' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
