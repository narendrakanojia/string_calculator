class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		if numbers.start_with?("//")
			delimiter, numbers = numbers.split("\n", 2)
			seprator = delimiter[2..-1]
			number_array = numbers.split(seprator)

		else
			number_array = numbers.split(/,|\n/)
			return number_array[0].to_i if number_array.count == 1
			
		end
		number_array.sum(&:to_i)
	end
end
