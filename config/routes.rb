Rails.application.routes.draw do
  resources :recipes

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

end
