Footplate::Application.routes.draw do
  resources :users, only: [:show]
  resources :feeds

  devise_for :users, path: :account

  get "home/index"
  root :to => 'home#index'

  match "/delayed_job" => DelayedJobWeb, :anchor => false
end
