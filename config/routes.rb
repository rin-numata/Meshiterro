Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'

end
