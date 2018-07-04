Rails.application.routes.draw do
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
  root 'posts#index'
  resources :posts
  resources :categories
end
