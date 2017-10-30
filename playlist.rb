class Playlist
  require_relative 'movie'
  require_relative 'waldorf_and_statler'
  require_relative 'snack'
  attr_accessor :name
  def initialize(name)

  	@name = name           #<Playlist:0x0000000002c2c2a0 @name="kermit", @movies=[]>
  	@movies = []

  end

   def add_movie(movie)

   	@movies << movie

     # raise @movies.inspect    [#<Movie:0x0000000002b6c478 @title="Goonies", @rank=10, @snack_carbs={}>]
    # @movies = [#<Movie:0x0000000002b6c608 @title="Goonies", @rank=10, @snack_carbs={}>, #<Movie:0x0000000002b6c518 @title="Ghostbusters", @rank=9, @snack_carbs={}>, #<Movie:0x0000000002b6c3d8 @title="Golddfinger", @rank=0, @snack_carbs={}>]
   end

   

   def play(viewings)
 
   	puts "#{@name}'s playlist:" 

   	
    snacks = SnackBar::SNACKS #... [#<struct Snack name=:popcorn, carbs=20>, #<struct Snack name=:candy, carbs=15>, #<struct Snack name=:nachos, carbs=40>, #<struct Snack name=:pretzel, carbs=10>, #<struct Snack name=:soda, carbs=5>]
    

    puts "\n there are #{snacks.size} snacks available in the snackbar"
    snacks.each do |snack|

    #  puts snack.object_id
    puts "#{snack.name} has #{snack.carbs} carbs"
    end

   # raise @movies[2].inspect


    1.upto(viewings) do |count|
      puts "\n Viewing #{count}"
     	@movies.each do |movie|   
      #puts movie.inspect        #<Movie:0x0000000002c2c368 @title="Goonies", @rank=10, @snack_carbs={}> (RuntimeError)

       WaldorfAndStatler.review(movie)  #Goonies got a thumps up
       snack = SnackBar.random         #<struct Snack name=:pretzel, carbs=10>
        #raise snack.inspect          #<struct Snack name=:candy, carbs=15>

       movie.ate_snack(snack)
      # puts "#{movie.title} led to #{snack.carbs} #{snack.name} carbs being consumed"
      
     	end
    #raise @movies.inspect
    end
  end

  def total_carbs_consumed
    @movies.reduce(0) do |sum, movie|
      sum + movie.carbs_consumed
    end 
  end

  

  def print_stats
   puts "\n #{@name}'s stats:"
   puts "#{total_carbs_consumed} total carbs consumed"

   @movies.sort.each do |movie|
   puts "\n #{movie.title}'s snack totla:"
   puts "#{movie.carbs_consumed} grand total carbs"
   end
  hits,flops = @movies.partition {|movie| movie.hit? }
  puts "\nHits:"
  puts hits.sort

  puts "\n flops:" 

  puts flops.sort

   
  

  end

end


