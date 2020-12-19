Rails.application.routes.draw do
  get 'secrets/show'

  get 'sessions/new'

  post 'sessions/create'

  delete 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
