# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  array = sentence.split
  punc = []
  array.each do |word|
    if word.end_with?(".", ",", "?", "!")
      word.chop
      punc.push(word)
    else
      punc.push(word)
    end
  end
  longest = punc.sort { |word, next_word| next_word.length <=> word.length }
  longest[0]
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end
