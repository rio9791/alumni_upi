Rails.application.routes.draw do
  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions',
    registrations: 'accounts/registrations'
  }

  namespace :admin do
    resources :dashboard
  end

  resources :home

  root 'home#index'
end
