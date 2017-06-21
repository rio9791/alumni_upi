Rails.application.routes.draw do
  devise_for :accounts

  resources :home

  root 'home#index'
end
