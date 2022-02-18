require "json"
require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy all db entries
Movie.destroy_all

url = "http://tmdb.lewagon.com/movie/popular"

# Actually fetch the contents of the remote URL as a String.
buffer = URI.open(url).read

# JSON parse the results
result = JSON.parse(buffer)["results"]

i = 0
poster_base_url = "https://image.tmdb.org/t/p/w500"


10.times do
  movie = result[i]
  new_movie = Movie.create(title: movie["title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: movie["vote_average"])
  p new_movie
  i += 1
end
