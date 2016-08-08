Rails.application.routes.draw do

 

  get 'static_pages/index'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  
  
  


# You can have the root of your site routed with "root"

  root 'static_pages#index'
  

  
  resources :orders, only: [:index, :show, :create, :destroy]
end