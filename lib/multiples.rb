
def is_multiple_of_3_or_5(current_number)
	unless current_number.is_a?(Integer) && current_number > 0
		puts "Positive Integer or die"
	end
	if current_number % 3 == 0 || current_number % 5 ==0 && current_number = Integer
		return true
	else
		return false
	end
end 



def sum_of_3_and_5_multiples(final_number)
	liste = Array.new
	if final_number.class != Integer || final_number < 0
		return "Positive Integer or die"
	else 
		final_number.times do |final_number|
		if is_multiple_of_3_or_5(final_number) == true
		liste << final_number	
		end
	end
		return liste.sum
	end
end

puts sum_of_3_and_5_multiples("test")


