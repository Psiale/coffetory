Rails.application.routes.draw do
  resources :raw_materials
  resources :coffee_shops
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'owners#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
