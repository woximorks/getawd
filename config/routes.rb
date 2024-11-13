Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'about', to: 'about#index'
  get 'blog_posts', to: 'blog_posts#index'
  get 'blog_posts/show'
  get 'contact', to: 'contact#index'
  get 'games', to: 'games#index'
  get 'games/show'
  get 'tasks', to: 'tasks#index'
  get 'tasks/show'
  get 'videos', to: 'videos#index'
  get 'videos/show'
  get 'projects', to: 'projects#index'
  get 'projects/show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :about, only: [:index]
  resources :blog_posts, only: [:index, :show]
  resources :contacts, only: [:index]
  resources :games, only: [:index, :show]
  resources :projects, only: [:index, :show]
  resources :tasks
  resources :videos, only: [:index, :show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
