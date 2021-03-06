Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  # get 'public/index'
  root 'public#index', as: 'public_index'

  resources :domains
  resources :results
  resources :scans
  get 'scan_all', to: 'scans#all_scan'

  # get '/scans/test', to: 'scans#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
