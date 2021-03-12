Rails.application.routes.draw do

  get "/pokemons", to: "pokemons#index", as: "pokemons"
  get "/pokemons/:id", to: "companies#show", as: "pokemon"

end
