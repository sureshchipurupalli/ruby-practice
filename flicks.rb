=begin
def weekday
	current_time = Time.now
	current_time.strftime("%A")
end

def movie_listing(title,rank=0)	
	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}"
	end

	puts movie_listing("goonies",10)
	puts movie_listing("ghostbusters", 9)

	a_title = "goldfinger"

	puts movie_listing(a_title)
=end


=begin
class Movie

	 # attr_reader :title, :rank
   attr_reader :rank

    attr_accessor :title 

  def initialize(title, rank=0)
  	@title = title
  	@rank = rank
  end

 def normalized_rank
  @rank / 10
 end

  def thumps_up
  @rank += 1
  end	

  def thumps_down
  @rank -= 1
  end	

 

  #setter method
  # def title=(new_title) 
  # 	@title = new_title
  # end

  #getter method
  #def title
  #	@title

 # end	

  def to_s
  # "#{@title} has a rank of #{normalized_rank}"	
    "#{@title} has a rank of #{rank}"	
  end


end

=end

#movie1 = Movie.new("goonies", 100)
#movie1.thumps_up
#puts movie1
#puts movie1.title

#puts movie1.title = "Goonies!"

#puts movie1.title
#puts movie1.normalized_rank
#puts movie1.rank


=begin

class Playlist
  def initialize(name)

  	@name = name
  	@movies = []

  end

   def add_movie(movie)

   	@movies << movie

   end

   def play

   	puts "#{@name}'s playlist:"

   	puts @movies

   	@movies.each do |movie|

    movie.thumps_up
    puts movie
   	end

  end


end






=end

#require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("goonies", 10)     #....  #<Movie:0x0000000002becda8 @title="Goonies", @rank=10, @snack_carbs={}>

movie2 = Movie.new("ghostbusters", 9) #....  #<Movie:0x0000000002becc40 @title="Ghostbusters", @rank=9, @snack_carbs={}>
 
movie3 = Movie.new("golddfinger")     #....  #<Movie:0x0000000002bdcb10 @title="Golddfinger", @rank=0, @snack_carbs={}>

movies = [movie1, movie2, movie3]     #.....  [#<Movie:0x0000000002bdc4f8 @title="Goonies", @rank=10, @snack_carbs={}>, #<Movie:0x0000000002bdc408 @title="Ghostbusters", @rank=9, @snack_carbs={}>, #<Movie:0x0000000002bdc318 @title="Golddfinger", @rank=0, @snack_carbs={}>] 

 
#puts movies  
playlist1 = Playlist.new("kermit")    #.....   #<Playlist:0x0000000002c2c2a0 @name="kermit", @movies=[]>

playlist1.add_movie(movie1) 
                                      #......  #<Playlist:0x0000000002c1c210 @name="kermit", @movies=[#<Movie:0x0000000002c1c558 @title="Goonies", @rank=10, @snack_carbs={}>]> 

playlist1.add_movie(movie2)            #<Playlist:0x0000000002c5c158 @name="kermit", @movies=[#<Movie:0x0000000002c5c2e8 @title="Goonies", @rank=10, @snack_carbs={}>, #<Movie:0x0000000002c5c1f8 @title="Ghostbusters", @rank=9, @snack_carbs={}>]>

                                     
playlist1.add_movie(movie3)           #<Playlist:0x0000000002ecd568 @name="kermit", @movies=[#<Movie:0x0000000002ece1e8 @title="Goonies", @rank=10, @snack_carbs={}>, #<Movie:0x0000000002ecdcc0 @title="Ghostbusters", @rank=9, @snack_carbs={}>, #<Movie:0x0000000002ecd9c8 @title="Golddfinger", @rank=0, @snack_carbs={}>]>







#playlist1.play(3)
#playlist1.print_stats
loop do
puts "how many viewings?('quit' to exit)"
answer = gets.chomp.downcase

case answer

when /^\d+$/

  playlist1.play(answer.to_i)


when 'quit', 'exit'
playlist1.print_stats
break
else
  puts "please enter a number or 'quit'"
end




end
#playlist1.print_stats

=begin

puts ("\n new playlist")

playlist2 = Playlist.new("Frozzie")

playlist2.add_movie(movie3)
movie4 = Movie.new("gremlins", 15)

playlist2.add_movie(movie4)
playlist2.play(3)

=end