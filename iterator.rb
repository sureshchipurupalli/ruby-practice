=begin
def three_times
puts "Ready"
yield(1)
puts "set"
yield(2)
puts "go"
end


three_times {|number| puts number }
=end
=begin
def compute

	if block_given?
	puts yield

else
	puts "does not compute"
end


end
compute { 3.12}

=end


numbers = (1..10).to_a
#puts number.select {|n| n.even? }


def my_select(array)
	results = []
	array.each do |element|
		results << element if yield(element)
	end
	results
end


puts my_select(numbers) {|n| n.even?}







