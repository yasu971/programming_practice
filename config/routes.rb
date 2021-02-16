Rails.application.routes.draw do
  devise_for :users
  get 'questions/answer'
  # get 'questions/new2'
  get 'questions/index2'
  root to: "questions#index"

  resources :questions, only: [:index, :new, :create]
  # resources :hoge, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
