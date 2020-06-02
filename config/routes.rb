Rails.application.routes.draw do
  resources :articles
  mount Main => '/'
  # get 'model' => 'articles#index'
  # get 'model/new' => 'articles#new'
end
