Rails.application.routes.draw do
  resources :users_to_meetings
  resources :meetings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
