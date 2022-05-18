Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :create, :new ]
  end
end

# restaurant_reviews      POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review   GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new

#           restaurants   GET  /restaurants(.:format)                            restaurants#index
#                         POST /restaurants(.:format)                            restaurants#create
#        new_restaurant   GET  /restaurants/new(.:format)                        restaurants#new
#            restaurant   GET  /restaurants/:id(.:format)                        restaurants#show

# "restaurants"
#   t.string "name"
#   t.string "address"
#   t.string "phone_number"
#   t.string "category"

# "reviews"
#   t.integer "rating"
#   t.text "content"
#   t.integer "restaurant_id"
#   t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
