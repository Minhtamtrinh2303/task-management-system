require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :teams
  resources :time_trackings
  resources :assignments
  resources :tasks
  resources :task_statuses
  resources :projects

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  resources :accounts
  resources :projects
  resources :task_statuses
  resources :tasks
  resources :assignments
  resources :file_attachments
  resources :time_trackings
  resources :teams
  resources :team_memberships
  resources :reports

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "accounts#index"
end
