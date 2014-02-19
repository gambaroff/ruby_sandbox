text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

def words_from_string(text)
 text.downcase.scan(/[\w']+/) #return an array of words
end

words_list = words_from_string(text)


def count_frequency(words_list)# iterate throuth the array and return the hash
  counts = Hash.new(0)
  for word in words_list
    counts[word] =+ 1
  end
  counts
end  