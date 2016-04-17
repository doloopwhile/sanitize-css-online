Rails.application.routes.draw do
  resources :samples
  root to: 'preview#show'
end
