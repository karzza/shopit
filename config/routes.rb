Rails.application.routes.draw do
  resources :wholesales

  resources :shops

  root 'site#index'
end
