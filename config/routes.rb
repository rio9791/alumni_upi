Rails.application.routes.draw do
  namespace :admin do
    resources :donates
  end
  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions',
    registrations: 'accounts/registrations',
    passwords: 'accounts/passwords'
  }

  namespace :admin do
    resources :dashboard do
      collection do
        get 'get_donations'
      end
    end
    resources :jobs
    resources :news
    resources :donations
    namespace :accounts do
      resources :alumnis
      resources :companies
      resources :faculties
    end
  end

  namespace :accounts do
    resources :dashboard
    resources :jobs
    resources :news
  end

  resources :home
  resources :news
  resources :careers
  resources :donations

  root 'home#index'
end
