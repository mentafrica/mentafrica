Rails.application.routes.draw do
  resources :join, only: [:index]
  resource :home, only: [:show]
  resources :mentors
  resources :mentees
  resources :app, only: :index
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'join/mentor', to: 'join#mentor', as: 'join_mentor'
  get 'join/mentee', to: 'join#mentee', as: 'join_mentee'
  # constraints(subdomain: 'app') do
  #   get '/', to: 'app#index', as: :app
  # end
  root 'home#show'
  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
