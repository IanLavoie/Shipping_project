Rails.application.routes.draw do
  # use this for "out-of-the-box" User table (email/password columns only)
  # devise_for :users
  # use this for modified versions of User table (more than email/password columns)
  # devise_for :users, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "users#home"
  get "/home" => "users#home"
  get "/select_user/:id" => "user#select_user"

  devise_for :users
  resources :users, :only => [:index, :show]
  resources :photos
  resources :jobs
  resources :boats
  resources :ports

end
