Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  get 'test' => 'pages#test'
  get 'body_measurement' => 'bodies#new'
  get 'bmi_calculator' => 'pages#bmi_calculator'
  get 'warriors_gallery' => 'pages#warriors_gallery'
  get 'body_measurement_public' => 'pages#body_measurement_public'
  get 'about' => 'pages#about'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'mypage', to: 'about#me', as: 'mypage'
  get 'mytable', to: 'about#my_table', as: 'mytable'
  get 'mysetting', to: 'about#setting', as: 'mysetting'
  get 'edit', to: 'users#edit', as: 'edit'
  post 'edit', to: 'users#update'
  get 'index', to: 'users#index', as: 'index'
  get 'update', to: 'bodies#new', as: 'update'
  get 'bodyindex', to: 'bodies#index', as: 'bodyindex'

resources :users
resources :sessions
resources :bodies
end
