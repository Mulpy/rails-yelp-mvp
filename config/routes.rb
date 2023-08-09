Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
end

# DONE A visitor can see the list of all restaurants. -> GET "restaurants"
# DONE A visitor can add a new restaurant, and be redirected to the show view of that new restaurant. -> GET "restaurants/new"
# DONE POST "restaurants"
# DONE A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# DONE GET "restaurants/38"
# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that’s it!
