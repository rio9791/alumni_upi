Rails.application.routes.draw do
  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions',
    registrations: 'accounts/registrations'
  }

  resources :home

  root 'home#index'
end
