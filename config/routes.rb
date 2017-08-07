Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :goals

  authenticated :user do
    root "goals#index", as: "authenticated_root"
  end
    root "static#index"
end
