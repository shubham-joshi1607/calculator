class Calculator

    def add(numbers)
        return 0 if numbers.empty?
      
        if numbers.start_with?("//")
          delimiter, numbers = numbers.split("\n", 2)
          delimiter = delimiter[2]
          parts = numbers.split(/#{Regexp.escape(delimiter)}|,|\n/)
        else
          parts = numbers.split(/,|\n/)
        end
      
        ints = parts.map(&:to_i)
        negatives = ints.select { |n| n < 0 }
      
        raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
      
        ints.sum
    end      
      
end
  