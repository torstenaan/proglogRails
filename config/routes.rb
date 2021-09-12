Rails.application.routes.draw do
  root "activities#index"

  resources :activities
  resources :types
  resources :subjects
end