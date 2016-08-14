Rails.application.routes.draw do



  #devise_for :users
  #resources :users

  #resources :products do
    #resources :comments
  #end
  resources :orders, only: [:index, :show, :create, :destroy]

  root 'static_pages#index'

  

  get 'index'     => 'static_pages#index'

 


  post 'static_pages/thank_you'

  #post 'payments/create'
end