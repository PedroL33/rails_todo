Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :todos, only: [:index, :create, :update, :destroy]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
