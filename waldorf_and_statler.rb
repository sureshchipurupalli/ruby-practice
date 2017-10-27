module WaldorfAndStatler

	def self.roll_die

    rand(1..6)

   end
def self.review(movie)
	number_rolled = roll_die
       case number_rolled
     # if number_rolled < 3
      when 1..2
         movie.thumps_down
       puts "#{movie.title} got a thumps down."

   # elsif number_rolled < 5
    when 3..4

      puts "#{movie.title} was skipped"

     else 
    movie.thumps_up
    puts "#{movie.title} got a thumps up"
  end
end
end
