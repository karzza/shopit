Rails.application.routes.draw do
  resources :wholesales

  resources :shops

  root 'shops#index'
end
