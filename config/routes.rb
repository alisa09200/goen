Rails.application.routes.draw do
  get 'teacher/index'
  get 'teacher/show'
  get 'main/index'
  get 'main/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: 'tweets#index'
  root to: 'main#index'
  resources :tweets do
    resources :reservations, only: [:index, :new, :create, :edit]
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :reservations
end
