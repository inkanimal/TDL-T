Rails.application.routes.draw do

  devise_for :users
  resource :categories, only: [:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resource :cart, only: [:show]
  authenticate :user do
    resources :order_items, only: [:create, :update, :destroy]
  end
   root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
