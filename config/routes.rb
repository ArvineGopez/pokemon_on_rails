Rails.application.routes.draw do

  get "/pokemons", to: "pokemons#index", as: "pokemons"

  get "/pokemons/:id", to: "pokemons#show", as: "pokemon", constraints: { id: /\d+/ }



end
