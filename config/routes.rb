Rails.application.routes.draw do
  devise_for :users
  root to: "syukies#index"
  resources :syukies
  resources :users, only: [:show] do
    member do
      get 'grade'
    end
  end
end
