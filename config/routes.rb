Rails.application.routes.draw do
  devise_for :users

    resources :users
    resources :locations
    resources :workers
    resources :work_types
    resources :work_types_locations
    resources :workers_locations
    resources :work_types_workers

    root "locations#index"
end
