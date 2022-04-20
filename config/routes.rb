Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'items/search' => 'items#search'
  resources :items
  get 'orders/complete' => 'orders#complete'
  resources :orders, only: [:index, :show, :create]
  resources :users, only: [:show]
  resources :sells, only: [:index, :show, :update]
end
