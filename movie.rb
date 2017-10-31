class Movie

	 # attr_reader :title, :rank
   attr_reader :rank

    attr_accessor :title 

  def initialize(title, rank=0)
  	@title = title.capitalize       #<Movie:0x0000000002becda8 @title="Goonies", @rank=10, @snack_carbs={}>
  	@rank = rank
    @snack_carbs = Hash.new(0)  

  end


  def each_snack
   # raise @snack_carbs.inspect  #  {:nachos=>40, :soda=>5, :pretzel=>10}

    @snack_carbs.each do|name,carbs|

      snack = Snack.new(name,carbs)
     # raise snack.inspect
      yield(snack)

    end
  end

  def carbs_consumed
   @snack_carbs.values.reduce(0,:+)
  end


  def ate_snack(snack)


      #<struct Snack name=:pretzel, carbs=10>
    @snack_carbs[snack.name] += snack.carbs


     puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed"
    puts "#{@title}'s snacks: #{@snack_carbs} "

   # raise @snack_carbs.inspect   # {:soda=>5}
   #  puts @snack_carbs.inspect   # {:pretzel=>10, :popcorn=>20, :soda=>5}
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

  def <=>(other_movie)

    other_movie.rank <=> @rank
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
    "#{@title} has a rank of #{@rank}(#{status})"	
  end


  def hit?

    @rank >= 10
  end

  def status

    hit? ? "hit" : "flop"
   #if hit?
   # "hit"

  #else

   # "flop"

  #end
   end 


end

if __FILE__ == $0

movie1 = Movie.new("goonies", 10)
movie1.thumps_up
puts movie1
puts movie1.title

puts movie1.title = "Goonies!"

puts movie1.title
puts movie1.normalized_rank
puts movie1.rank
puts movie1

end