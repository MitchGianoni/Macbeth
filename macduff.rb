class MacDuff

	attr_reader :data, :counting

	def initialize(file)
		@test = file
		@counting = Hash.new(0)
	end

	def evaluate
		words = get_words(@test)
		good_words = remove_short_words(words)
		fixed_words = adjust_words(good_words)
		count_words(fixed_words)
	end

	def get_words(words)
		#this method puts the words into an array without punctuation
		words.split(/\W+/)
	end

	def remove_short_words(array)
		#this method removes all words under 5 characters
		array.delete_if {|x| x.length < 5 }
	end

	def adjust_words(array)
		#this method puts all words into downcase for standardization
		array.collect { |x| x.downcase }
	end 

	def count_words(array)
		#this method counts the words and stores count values into a hash
		array.each { |x| counting[x] += 1}
		counting.sort_by(&:last).reverse
	end
end
