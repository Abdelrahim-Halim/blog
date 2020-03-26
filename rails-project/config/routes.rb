Rails.application.routes.draw do
  root :to => "posts#index"
  resources :users
  post '/comments' => 'comments#create'
  post '/comments/:id', to: 'comments#edit'


  resources :posts
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :posts do
  #   resources :comments
  # end
end