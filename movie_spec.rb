require_relative 'movie'

describe Movie do

    before do
    @initial_rank = 10
    @movie = Movie.new("goonies",@initial_rank)
    end


	it "has a capitalized name" do 

		

		@movie.title.should  == "Goonies"

    end

    it "has an initial rank" do
        
        @movie.rank.should == 10

    end

    it "has a string represention" do

    	

    	 @movie.to_s.should == "Goonies has a rank of 10(hit)"

    end

    it "increses a rank by one when given a thumps up" do

  
    @movie.thumps_up
    @movie.rank.should == @initial_rank + 1

    end

    it "decreses a rank by 1 when given a thumps down" do

    
    @movie.thumps_down
    @movie.rank.should == @initial_rank - 1

end
  

  context  "created with a default rank" do

  	before do
    @movie = Movie.new("goonies")
   end

   it "has a rank of 0" do

   	@movie.rank.should == 0

   end
   end

   context "with a rank of at least 10" do
    
    before do

    @movie = Movie.new("goonies",10)

    end

    it "is a hit" do
     #@movie.hit?.should == true
    # @movie.hit?.should be true

      @movie.should be_hit
    end

     it "has a hit status" do

     	@movie.status.should == "hit"

     end	


    end	

     context "with a rank o f less than 10" do
    
    before do

    @movie = Movie.new("goonies",9)

    end

    it "is not a hit" do
    # @movie.hit?.should == false
    #  @movie.hit?.should be false

    @movie.should_not be_hit
    end

    it "has a flop status" do 
     @movie.status.should == "flop"

     end
    end	




	
end