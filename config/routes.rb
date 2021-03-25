Rails.application.routes.draw do
  resources :coffee_shops, :path => 'business' do
    resources :raw_materials, except: :show
  end
  resources :sessions, only: :create
  post 'signup', to: 'owners#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
