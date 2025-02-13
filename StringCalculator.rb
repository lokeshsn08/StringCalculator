class SimpleCalculator
  def add(number_string)

  if number_string.empty?
      return 0
  end
    
   separator = ","
    if number_string.start_with?("//")
      separator = number_string[2]  
      number_string = number_string.split("\n")[1]
    end
    
    number_string = number_string.gsub("\n", separator) # Replace newlines with the separator
    number_list = number_string.split(separator)
    
    total_sum = 0
    negative_numbers = []

    number_list.each do |num|
      number = num.to_i
      if number < 0
        negative_numbers << number
      else
        total_sum += number
      end
    end
    return total_sum
  end
end
