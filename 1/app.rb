def printNumbers(number)
	str = "1"
	sb = ""
	puts(str)
	sb += str
	for i in 1..number.to_i
		str = swap(str)
		puts(str)
		sb +=str
	end
	return sb
end

def swap(text)
	index = 0
	result = ""
	while index<text.length()
		val = 0
		el = text.slice(index)
		while el == text.slice(index)
			val += 1
			index +=1
			if index == text.length()
				break
			end
		end
		result += val.to_s
		result += el.to_s
	end
	return result
end

puts("Введите число: ")
num = gets.chomp
printNumbers(num)