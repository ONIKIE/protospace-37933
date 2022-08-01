Rails.application.routes.draw do
  devise_for :users
 root to: "prototypes#index"
 resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
 #post 'prototypes/:id' => 'prototypes#show'

  resources :comments, only: :create
end
 resources :users, only: :show
  
end
