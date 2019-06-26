Rails.application.routes.draw do
  devise_for :users
  namespace :user do
    resources :members
    resources :events
    root to: 'users#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "user/users#index"
end
