Rails.application.routes.draw do
  resources :post_comments
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'catagories/index'
  get 'catagories/edit'
  get 'catagories/new'
  get 'catagories/show'
  get 'categories/index'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/show'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :posts
  resources :categories
  match '/about' , :to =>'pages#about',:via => [:get, :post]
  match '/contact' , :to =>'pages#contact',:via => [:get, :post]
  match '/resources' , :to =>'pages#resources',:via => [:get, :post]
  ActiveAdmin.routes(self)
end
