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
		str_to_num = number_array.map {|aa| aa.to_i}
		negative_num = str_to_num.select { |n| n < 0 }

		if negative_num.any?
    	  puts "negative numbers not allowed #{negative_num.join(',')}"
    	end

    	str_to_num.sum
	end
end


puts StringCalculator.add("4,-1,5")