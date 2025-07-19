class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		if numbers.start_with?("//")
			delimiter, numbers = numbers.split("\n", 2)
			seprator = delimiter[2..]
			number_array = numbers.split(seprator)
			number_array.sum(&:to_i)
		else
			number_array = numbers.split(/,|\n/)
			return number_array[0].to_i if number_array.count == 1
			number_array.sum(&:to_i)
		end
	end
end


puts StringCalculator.add("")
puts StringCalculator.add("1")
puts StringCalculator.add("1,5")
puts StringCalculator.add("1\n2,3")