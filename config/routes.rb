Rails.application.routes.draw do
  devise_for :users
  get 'about/show'
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show,:edit, :index, :update]
  resources :about, only: [:show]
end
