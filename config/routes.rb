Rails.application.routes.draw do
  get 'chats/show'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :edit]
end
