# TODO: create a RomanNumerals helper class
class RomanNumerals
  
  @hash = { 0 => "", 1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D",
  	900 => "CM", 1000 => "M" }
  
  def self.to_roman(number)
    ans = ""
    @hash.reverse_each do |k,v|
  		if number >= k
  			ans << v + to_roman(number - k) unless number == 0
  			break
  		end
  	end
  	ans
  end

  def self.from_roman(roman)
    ans = 0
    @hash.reverse_each do |arabic, roman_num|
      if roman == roman_num
        ans = arabic
        break
      elsif roman[0..1] == roman_num
        ans = arabic
        ans += from_roman(roman[2..-1])
        break
      elsif roman[0] == roman_num
        ans = arabic
        ans += from_roman(roman[1..-1])
        break
      end
    end
    ans
  end
end

# RomanNumerals.to_roman(1000)


























@hash = { 0 => "", 1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M" }



def from_roman(roman)
  ans = 0
  @hash.reverse_each do |arabic, roman_num|

    if roman == roman_num
      ans = arabic
      break
    elsif roman[0..1] == roman_num
      ans = arabic
      ans += from_roman(roman[2..-1])
      break
    elsif roman[0] == roman_num
      ans = arabic
      ans += from_roman(roman[1..-1])
      break
    # else
    #   ans = roman.count("I")
    end
  end
  ans
end




puts from_roman("I") # =>    1
puts from_roman("II") # =>   2
puts from_roman("III") # =>  3
puts from_roman("IV") # =>   4
puts from_roman("V") # =>    5
puts from_roman("VI") # =>   6
puts from_roman("VII") # =>  7
puts from_roman("VIII") # => 8
puts from_roman("IX") # =>   9
puts from_roman("XI") # =>   11
puts from_roman("CDLXXVIII") # => 478
puts from_roman("CMLXXVIII") # => 978
puts from_roman("LXI") # => 61