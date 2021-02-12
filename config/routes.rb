Rails.application.routes.draw do
  devise_for :users
  get 'questions/index'
  root to: "questions#index"

  resources :questions, only: [:new]
  # resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
