Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  resources :accounts
  get '/user' => "accounts#index", :as => :user_root
end
