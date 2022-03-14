Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 root to: "rooms#index"
 resources :users, only: [:edit, :update]
 resources :rooms, only:[:new, :create]
end
