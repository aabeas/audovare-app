Rails.application.routes.draw do

  root to: 'pages#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
  controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  get 'profile' => 'pages#profile'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'jobs' => 'pages#jobs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
