Rails.application.routes.draw do

  root to: "home#index"

  resources :comments
  devise_for :users
  resources :users

  resources :posts do
  	post 'create', on: :collection
  	post 'likes', on: :collection
  	post 'comments_update', on: :collection
  	get 'post_comments', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end