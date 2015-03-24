dictionary = ["below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  results = Hash.new
  dictionary.each do |substr|
    occurences = string.downcase.scan(substr)
    if occurences.length > 0
      results[substr] = occurences.length
    end
  end
  return results
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
