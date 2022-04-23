Rails.application.routes.draw do
  get 'index/index'

  devise_for :users

    resources :users
    resources :workers
    resources :locations
    resources :instruments
    resources :investments
    resources :expenditures
    resources :salaries
    resources :customers
    resources :work_types
    resources :location_work_types
    resources :location_customers
    resources :diaries
    resources :transports

    root "index#index"
end
