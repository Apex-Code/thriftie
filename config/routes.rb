Rails.application.routes.draw do
  get 'goals/index'

  get 'goals/show'

  get 'goals/edit'

  get 'goals/_form'

  get 'goals/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
