class IncubyteStringCalculator
   def remove_special_characters(input)
     cleaned_string = input.gsub(/[^0-9]/, ' ')
     #clean input string from special characters
     integer_array = cleaned_string.split.map(&:to_i)
    #converts each elemt of array into intgers values
      negatives = integer_array.select { |num| num.to_i < 0 }
      raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
      # escape negative values and return sum
      
      integer_array.map(&:to_i).sum
   end
end

strinCalc = IncubyteStringCalculator.new
puts strinCalc.remove_special_characters("78,33")   # Output: 6
