Rails.application.routes.draw do
  get 'about/show'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show,:edit, :index]
  resources :about, only: [:show]
end
