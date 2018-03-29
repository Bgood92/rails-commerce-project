Rails.application.routes.draw do
  get 'products/search_by_category'
  get 'products/search'

  resources :products, only: [:index, :show]
  resources :customer
  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
