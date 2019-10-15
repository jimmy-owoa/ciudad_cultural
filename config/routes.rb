Rails.application.routes.draw do
  devise_for :users
  if Rails.env.production?
    get "404", :to => "application#page_not_found"
  end
  namespace :user do
    resources :members
    resources :events
    resources :postulations
    root to: "events#index"
  end
  scope module: "frontend" do
    resources :postulations
    resources :members
    resources :events
    get "contact", to: "frontends#contact"
    get "talca", to: "frontends#talca"
    get "work-with-us", to: "frontends#work_with_us"
    post "send_email", to: "frontends#send_email"
    root to: "frontends#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
