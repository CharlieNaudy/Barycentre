Rails.application.routes.draw do
  resources :friends
  resources :users_to_meetings
  resources :meetings
  resources :users
  post "users/login"            => "users#login"
  get "friends/users/:id"		=> "friends#friends_user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
