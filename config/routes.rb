Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  get 'body_measurement' => 'pages#body_measurement'
  get 'bmi_calculator' => 'pages#bmi_calculator'
  get 'warriors_gallery' => 'pages#warriors_gallery'
  # get 'pages/home'
  get 'about' => 'pages#about'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'mypage', to: 'about#me', as: 'mypage'
  get 'mysetting', to: 'about#setting', as: 'mysetting'

resources :users
resources :sessions
end
