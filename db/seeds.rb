# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "csv"

Pokemon.delete_all


Pokemon.create(
  name:     "Pokemon About",

)

Pokemon.create(
  name:     "Information about Pokemons",

)


filename = Rails.root.join("db/Pokemon.csv")

puts "Importing CSV data from: #{filename}"

csv_data = File.read(filename)
pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")

pokemons.each do |pokemon|
  pokemon = Pokemon.find_or_create_by(name:pokemon["Name"])
end