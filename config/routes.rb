Rails.application.routes.draw do
  resources :entries

  root to: 'application#index'
end
