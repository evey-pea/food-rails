Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/foods", to: "foods#index", as: "food_index" 
  post "/foods", to: "foods#create", as: "food_create"
  get "/foods/new", to: "foods#new", as: "food_new"
  get "/foods/:id", to: "foods#show", as: "food_show"
  get "/foods/:id/edit", to: "foods#edit", as: "food_edit"
  put "/foods/:id", to: "foods#update", as: "food_update"
  delete "/foods/:id", to: "foods#destroy", as: "food_destroy"
end
