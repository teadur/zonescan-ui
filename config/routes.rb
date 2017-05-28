Rails.application.routes.draw do
  # get 'public/index'
  root 'public#index', as: 'public_index'

  resources :domains
  resources :results
  resources :scans
  get '/scan/test', to: 'scan#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
