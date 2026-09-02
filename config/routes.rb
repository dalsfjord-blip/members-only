Rails.application.routes.draw do
  devise_for :users


  # Restrict posts routes to only the 3 required actions
  resources :posts, only: [ :new, :create, :index ]

  # Set the main homepage to the posts index (optional, but convenient)
  root "posts#index"
end
