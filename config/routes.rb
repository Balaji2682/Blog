Rails.application.routes.draw do
  resources :doctors
  resources :articles
  root 'articles#index'
  mount Main => '/'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # get 'model' => 'articles#index'
  # get 'model/new' => 'articles#new'
end
