Rails.application.routes.draw do
  root to: "home#index"
  
  resources :genres
  resources :directors
  resources :films
end
