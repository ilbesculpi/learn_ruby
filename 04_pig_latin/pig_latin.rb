#write your code here
def translate(s)

   words = s.split(" ")
   translations = words.map { |w|
	   translateWord(w)
   }
   return translations.join(" ")

end

def translateWord(s)

	# If a word begins with a vowel sound,
	# add an "ay" sound to the end of the word.
	vowels = ["a", "e", "i", "o", "u"]
	startLetter = s[0]
	if vowels.include?(startLetter)
		translation = s + "ay"
		return translation
	end

	# "counts 'qu' as a single phoneme"
	# "quiet" => "ietquay"
	if s.start_with?("qu")
		len = s.length
		return s.slice(2, len) + "quay"
	end

	# If a word begins with a consonant sound,
	# move it to the end of the word,
	# and then add an "ay" sound to the end of the word.

	# slice initial consonants!
	len = s.length
	consonantsAtBegining = ""
	(0..len).each do |x|
		currentLetter = s[x]
		if vowels.include?(currentLetter)
			if currentLetter == "u" && s[x-1] == "q"
				# treat "qu" as a consonant
				consonantsAtBegining = consonantsAtBegining + "u"
			end
			break
		end
		consonantsAtBegining = consonantsAtBegining + s[x]
	end

	s = s.slice(consonantsAtBegining.length, len)
	translation = s + consonantsAtBegining + "ay"
	return translation

end
