Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 root to: "rooms#index"
 resources :users, only: [:edit, :update]
 resources :rooms do
  resources :messages, only:[:index, :create]
 end
end
