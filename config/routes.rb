Rails.application.routes.draw do
  # installation d'attachinary
  mount Attachinary::Engine => "/attachinary"
  # Edouard : j'ai overridé devise pour la redirection du sign up en créant un registrations controller
  devise_for :pros, controllers: { registrations: "registrations" }

resources :customers, only: [ :create ]
resources :pros, only: :show

  get 'formulaire', to: 'customers#new'
  get 'confirmation', to: 'customers#show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
