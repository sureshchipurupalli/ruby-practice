#names = %w(Goonies Ghostbusters Goldfinger Goddfather)
#puts names.sort_by {|w|w.length}

require_relative 'movie'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("godfather", 3)
movie3 = Movie.new("goldfinger", 7)

movies = [movie1, movie2, movie3]

#puts movies.sort_by {|movie| movie.rank}.reverse
#puts movie1.rank <=> movie1.rank

puts movies.sort 