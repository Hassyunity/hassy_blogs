Rails.application.routes.draw do
  # Page d'attente à la racine
  root "blogs#index"

  # ou accessible aussi via /blogs si tu veux garder les deux
  get "blogs", to: "blogs#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :comments, only: [:create]
end
