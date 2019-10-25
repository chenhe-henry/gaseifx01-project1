Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  get 'body_measurement' => 'pages#body_measurement'
  get 'bmi_calculator' => 'pages#bmi_calculator'
  get 'warriors_gallery' => 'pages#warriors_gallery'
  get 'pages/home'
  get 'about' => 'pages#about'
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
end
