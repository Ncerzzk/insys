Rails.application.routes.draw do
  resources :goods
  resources :friends
  resources :provinces
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
