Rails.application.routes.draw do
  devise_for :logins

  resources :companies

  resources :workers

  resources :hazards

  resources :sites, :collection => { :add_hazard => :put } do
    resources :orientations
  end

  get 'logons/index'
  get 'logons/new'

  root 'welcome#index'
end
