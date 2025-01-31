Rails.application.routes.draw do
  root "omdb#search"

  resources :movies

  get "search", to: "omdb#search", as: "search"
  get "omdb/details", to: "omdb#details", as: "omdb_details"
end
