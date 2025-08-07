Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  # Static pages
  get 'about',     to: 'about#index'
  get 'contact',   to: 'contact#index'
  get 'dashboard', to: 'dashboard#index'
  get 'calendar',  to: 'calendar#show'
  get 'landscaping', to: 'landscaping#index'

  # Resources
  resources :goals
  resources :tasks
  resources :documents
  resources :about,     only: [:index]
  resources :contacts,  only: [:index]
  resources :blog_posts, only: [:index, :show]
  resources :games,     only: [:index, :show]
  resources :ideas, only: [:show]
  resources :projects,  only: [:index, :show]
  resources :videos,    only: [:index, :show]
  resources :rewards,   only: [:index, :new, :create, :destroy] do
    member do
      post :redeem
      post :evaluate
    end
  end
end