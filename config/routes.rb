RailsForZombies::Application.routes.draw do
  root to: "tweets#index"
  resources :tweets
  resources :zombies
end
