Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  resources :items
  get 'items/search' => 'items#search'
  resources :orders, only: [:index, :show, :create, :new]
  get 'orders/complete' => 'orders#complete'
end
