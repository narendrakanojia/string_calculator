class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		number_array = numbers.split(/,|\n/)
		return number_array[0].to_i if number_array.count == 1

		number_array.sum(&:to_i)
	end
end


puts StringCalculator.add("")
puts StringCalculator.add("1")
puts StringCalculator.add("1,5")
puts StringCalculator.add("1\n2,3")