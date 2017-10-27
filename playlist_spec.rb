require_relative 'playlist'
require_relative 'movie'
describe 'Playlist' do
  before do
   @playlist = Playlist.new("kermit")
  end

  it "must have a playlist name" do
   @playlist.name.should == "kermit"
  end



  context "being played with one movie" do

  	before do
  		@initial_rank = 10
  		@movie = Movie.new("goonies", @initial_rank)
  		@playlist.add_movie(@movie)
    end

    it "has an initial rank of 10" do
    @movie.rank.should == 10
 end 




it "gives a movie a thumps up if a high number is rolled out " do
  WaldorfAndStatler.stub(:roll_die).and_return(5)
  @playlist.play

  @movie.rank.should == @initial_rank + 1

end

 
it "it skips the movie if a medium number is rolled" do
  WaldorfAndStatler.stub(:roll_die).and_return(3)
  @playlist.play

  @movie.rank.should == @initial_rank

end

it "gives a thumps down when a low number is rolled " do
  WaldorfAndStatler.stub(:roll_die).and_return(1)
  @playlist.play

  @movie.rank.should == @initial_rank - 1

end


end
end