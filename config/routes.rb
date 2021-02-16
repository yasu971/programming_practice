Rails.application.routes.draw do
  devise_for :users
  get 'questions/answer'
  get 'questions/new2'
  root to: "questions#index"

  resources :questions, only: [:index, :new, :create]
  # resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
