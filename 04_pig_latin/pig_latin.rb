=begin
def translate word
	words = word.split(' ')

	if word.index(/([aeiou].*)/) < 2
		if word.index(/([aeiou].*)/) < 1
			word
		elsif word.index(/([aeiou].*)/) === 1
			word = word.slice(1, word.length) + word.slice(0, 1)
		elsif word.start_with?("qu")
			word = word.slice(1, word.length) + word.slice(0, 1)
		end
	else
		word = word.slice(2, word.length) + word.slice(0, 2)
	end
	word += "ay"
	word
end
=end

def translate(s)
	s.split.map do |word|
		i = 0
		while not vowel? word[i,1]
			if (word[i,2] == 'qu')
				i += 2
			else
				i += 1
			end
		end
		word[i..-1] + word[0, i] + 'ay'
	end.join(' ')
end


def vowel? c
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']
	vowels.include? c
end

