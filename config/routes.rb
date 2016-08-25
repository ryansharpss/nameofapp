Rails.application.routes.draw do

 

  resources :products
  get 'static_pages/index'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  
  
  


  #devise_for :users
  #resources :users

  #resources :products do
    #resources :comments
  #end
  resources :orders, only: [:index, :show, :create, :destroy]


# You can have the root of your site routed with "root"

  root 'static_pages#landing_page'
  


 

 


  post 'static_pages/thank_you'

  #post 'payments/create'

  
 

end