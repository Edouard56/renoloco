Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # installation d'attachinary
  mount Attachinary::Engine => "/attachinary"
  # Edouard : j'ai overridé devise pour la redirection du sign up en créant un registrations controller
  devise_for :pros, controllers: { registrations: "registrations", sessions: "sessions" }

  resources :customers, only: [ :create ] do
    get 'confirmation', to: 'customers#show'
    post 'selection', to: 'customers#select_matches'
  # resources :pros, only: :show
  end

  namespace :pros do
    resource :dashboard, only: :show
    resource :profile, only: [:show, :edit, :update]

  # pour dispatcher les matches entre les pending et les acceptés
    resources :matches do
      collection do
        get :accepted
      end

      #choix des pro entre accepter ou refuser dans leur dashboard
      member do
        patch :accept
        patch :refuse
      end
    end
  end

  get 'formulaire', to: 'customers#new'
  get  'bien-choisir-son-entreprise-de-renovation', to: 'pages#choisir_son_renovateur'
  get 'pourquoi-choisir-renoloco', to: 'pages#choix_renoloco'
  get 'presentation-renoloco', to: 'pages#presentation'
  get 'la-reglementation', to: 'pages#reglementation'
  get 'contact', to: 'pages#contact'
  get 'mener-une-strategie-de-renovation', to: 'pages#strategie_renovation'
  get 'pourquoi-faire-appel-a-une-agence-de-renovation', to: 'pages#pourquoi_agence_renovation'
  get 'les-astuces-pour-optimiser-l-espace-de-travail', to: 'pages#astuces_optimisation_espace'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
