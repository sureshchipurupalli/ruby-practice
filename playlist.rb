class Playlist
  require_relative 'movie'
  require_relative 'waldorf_and_statler'
  require_relative 'snack'
  attr_accessor :name
  def initialize(name)

  	@name = name
  	@movies = []

  end

   def add_movie(movie)

   	@movies << movie



   end

   

   def play(viewings)
 
   	puts "#{@name}'s playlist:" 

   	
    snacks = SnackBar::SNACKS
    puts "\n there are #{snacks.size} snacks available in the snackbar"
    snacks.each do |snack|
    puts "#{snack.name} has #{snack.carbs} carbs"
    end


    1.upto(viewings) do |count|
      puts "\n Viewing #{count}"
     	@movies.each do |movie|
       WaldorfAndStatler.review(movie)
       snack = SnackBar.random

       movie.ate_snack(snack)
      # puts "#{movie.title} led to #{snack.carbs} #{snack.name} carbs being consumed"
      puts movie
     	end
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


