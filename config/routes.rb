Rails.application.routes.draw do
  root "goals#index"
  resource :goals
end
