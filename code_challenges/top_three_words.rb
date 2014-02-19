text = "Count Lev Nikolayevich Tolstoy, also known as Leo Tolstoy, was a Russian writer who primarily wrote novels and short stories. 
Tolstoy was a master of realistic fiction and is widely considered one of the world's greatest novelists."



#My solution.
def top_3_words(text)
  words_to_string = text.downcase.scan(/[\w']+/)
  hash_top_words = Hash.new(0)
  for same_word in words_to_string 
    hash_top_words[same_word] +=1 unless same_word =~ /^\W+$/
  end
  sorted = hash_top_words.sort_by {|k,v| v}.reverse.first(3)
  top_keys = []
  for item in sorted
    top_keys.push(item[0])
  end  
  top_keys
end

top_keys = sorted.each{|k| k[0]}

#Great method doing same thing, but not mine.
def top_3_words(text)
  count = Hash.new { 0 }
  text.scan(/\w+'*\w*/) { |word| count[word.downcase] += 1 }
  count.map{|k,v| [-v,k]}.sort.first(3).map(&:last)
end


