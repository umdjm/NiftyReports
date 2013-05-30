NiftyReports::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'ageofqueue', to: 'static_pages#ageofqueue', as: 'ageofqueue'
  get 'app_fund_overview', to: 'static_pages#app_fund_overview', as: 'app_fund_overview'
  get 'creditrej', to: 'static_pages#creditrej', as: 'creditrej'

  resources :users
  resources :sessions

  root to: 'static_pages#index'
end

