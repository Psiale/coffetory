Rails.application.routes.draw do
  resources :coffee_shops do
    resources :raw_materials, except: :show
    resources :products, except: :raw_materials
    post 'products/:id/raw_materials', to: 'products#update_product_raw_materials'
    get 'products/:id/raw_materials', to: 'products#raw_materials'
  end
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'owners#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
