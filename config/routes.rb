Rails.application.routes.draw do
  devise_for :webusers
  resources :goods do
    member do
      post 'set_status'
      get 'get_rqrcode'
    end
  end
  resources :friends
  resources :provinces

  root to: "goods#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
