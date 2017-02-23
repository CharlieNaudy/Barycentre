Rails.application.routes.draw do
  resources :friends
  resources :meetings_matching_tables
  resources :meetings
  resources :users
  post "users/login"            => "users#login"
  get "friends/users/:id"		=> "friends#friends_user"
  get "meetings/user/:id"		=> "meetings#get_meetings"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
