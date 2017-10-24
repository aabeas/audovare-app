Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  get 'profile' => 'pages#profile'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'jobs' => 'pages#jobs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
