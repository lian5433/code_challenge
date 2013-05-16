
class RomanNumerals
  def initialize
    @numbers = [100, 90, 50, 40, 10, 9, 5, 4, 1]
    @letters = ["C", "XC", "L",	"XL", "X", "IX", "V", "IV", "I"]
  end

  def list
    100.times { |i| 
      puts "#{i+1}  #{numberal_to_roman(i+1)}"
    }
  end
  
  private
  
    def numberal_to_roman(input_num)
      roman = ""; 
      input_num

      @numbers.each_with_index do |n, index|
        while input_num >= n
          roman += @letters[index]
          input_num -= n
        end
      end
      return roman;
    end
end

rn = RomanNumerals.new
rn.list