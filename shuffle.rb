class String
	def shuffle
		self.split('').shuffle.join
	end
end

puts "Enter string to shuffle: "
string = gets.chomp

puts string.shuffle