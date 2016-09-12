Rails.application.routes.draw do
  

  root 'restaurants#index'

  # devise_for :users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  devise_for :only_admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

 devise_for :users  
 
 resources :restaurants
 resources :dishes, only: [:show]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
