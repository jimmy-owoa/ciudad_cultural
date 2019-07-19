Rails.application.routes.draw do
  devise_for :users
  namespace :user do
    resources :members
    resources :events
    root to: 'events#index'
  end
  scope module: 'frontend' do
    resources :members
    resources :events
    root to: "frontends#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
