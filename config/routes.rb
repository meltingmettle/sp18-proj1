Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "/capture", to: "pokemon#capture", as: "capture" #function call
  patch "/damage", to: "pokemon#damage", as: "damage"
  post "new", to: "pokemon#new", as: "new"
  #path pokemon:id:damage
  #pokemon new get:
  #post form to pokemon create function in controller'
  #post/pokemons

  #Create a new route in your routes file that will call the function you just wrote.
  #Name the path capture as its prefix. Set the URI pattern to be "capture".
end
