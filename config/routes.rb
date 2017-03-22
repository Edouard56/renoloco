Rails.application.routes.draw do
  # installation d'attachinary
  mount Attachinary::Engine => "/attachinary"
  # Edouard : j'ai overridé devise pour la redirection du sign up en créant un registrations controller
  devise_for :pros, controllers: { registrations: "registrations" }

resources :customers, only: [:new, :create]
resources :pros, only: :show

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
