Rails.application.routes.draw do
  devise_for :users
  root to: "syukies#index"
  resources :syukies, only: :index
end
