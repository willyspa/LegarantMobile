Rails.application.routes.draw do
  resources :contacts
  resources :contracts
  resources :mycontractsacts
  get 'mycontracts',to: 'mycontracts#index'
  resources :accounts
  resources :session
  get 'session',to: 'session#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
