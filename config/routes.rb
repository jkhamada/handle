Rails.application.routes.draw do
  # get 'users/index'
  #
  # get 'users/show'
  #
  # get 'users/edit'
  root 'users#index'
  resources :users
  resources :sessions
  resources :aliass
  resources :dashboards


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
