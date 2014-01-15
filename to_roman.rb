def solution(number)
	hash = { 0 => "", 1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D",
		900 => "CM", 1000 => "M" }
	ans = ""
	hash.reverse_each do |k,v|
		if number >= k
			ans << v + solution(number - k) unless number == 0
			break
		end
	end
	ans
end


puts solution(0) # => "M"
puts solution(1)
puts solution(2)
puts solution(3)
puts solution(4)
puts solution(5)
puts solution(6)
puts solution(7)
puts solution(8)
puts solution(9)
puts solution(10)
puts solution(11)
puts solution(12)
puts solution(13)
puts solution(99)
puts solution(1996)