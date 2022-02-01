Rails.application.routes.draw do
  get 'about/show'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show,:edit]
  resources :about, only: [:show]
end
