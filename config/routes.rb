Rails.application.routes.draw do
  devise_for :logins

  resources :companies
  resources :hazards

  resources :workers do
    resources :logins, only: [:new, :create]
  end

  resources :sites do
    resources :orientations, only: [:show, :new, :create]
    resources :logins, only: [:new, :create]
  end

  resources :logons, only: [:index, :new, :create] do
    get 'logout', on: :member
  end

  root 'welcome#index'
end
