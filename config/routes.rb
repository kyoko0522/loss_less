Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'items/search' => 'items#search'
  resources :items
  resources :orders, only: [:index, :show, :create]
  get 'orders/complete' => 'orders#complete'
  resources :users, only: [:show]
end
