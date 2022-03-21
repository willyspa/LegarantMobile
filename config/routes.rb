Rails.application.routes.draw do
  resources :contacts
  resources :contracts
  resources :mycontracts
  get 'mycontracts',to: 'mycontracts#index'
  resources :accounts
  root 'session#index'
  resources :session
  get 'session',to: 'session#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
