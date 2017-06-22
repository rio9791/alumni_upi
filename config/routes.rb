Rails.application.routes.draw do
  namespace :admin do
    namespace :accounts do
      resources :faculties
    end
  end
  namespace :admin do
    namespace :accounts do
      resources :companies
    end
  end
  namespace :admin do
    namespace :accounts do
      resources :alumnis
    end
  end
  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions',
    registrations: 'accounts/registrations',
    passwords: 'accounts/passwords'
  }

  namespace :admin do
    resources :dashboard
    namespace :accounts do
      resources :alumnis
      resources :companies
      resources :faculties
    end
  end

  resources :home

  root 'home#index'
end
