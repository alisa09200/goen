Rails.application.routes.draw do
  get 'teacher/index'
  get 'main/index'
  get 'main/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: 'tweets#index'
  root to: 'main#index'
  resources :tweets do
    resources :reservations, only: [:index, :new, :create]
    resources :comments, only: :create
  end
  resources :users, only: :show
  resources :reservations
end
