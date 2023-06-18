using Genie.Router
using Genie.Requests

using WatchTonight.MoviesController

route("/movies", MoviesController.index)

route("/movies/search", MoviesController.search, named = :search_movies)

route("/movies/search_api", MoviesController.search_api)

route("/") do
  serve_static_file("welcome.html")
end

route("/addition") do 
  a = parse(Int, payload(:first))
  b = parse(Int, payload(:second))
  sum = a + b
  print(sum)
end

greet() = "welcome"

route("/greet", greet)