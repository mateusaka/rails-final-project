Rails.application.routes.draw do
  root "home#index"
  
  get "home", to: "home#index"

  get "genres", to: "genres#list"
end
