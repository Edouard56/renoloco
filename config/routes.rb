Rails.application.routes.draw do
  get 'customers/new'

  get 'customers/create'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
