#codewars
#You start working for a fancy new startup hoping to revolutionize social networking! 
#GASP! They had this great idea that users should be able to specify relevant keywords to 
#their posts using an ingenious idea by prefixing those keywords with the pound sign (#). 
#Your job is to extract those keywords so that they can be used later on for whatever purposes.

#Note:

#Pound signs alone do not count, for example: the string "#" would return an empty array.
#If a word is preceded by more than one hashtag, only the last hashtag counts (e.g. "##alot" would return ["alot"])
#Hashtags cannot be within the middle of a word (e.g. "in#line hashtag" returns an empty array)
#Hashtags must precede alphabetical characters (e.g. "#120398" or "#?" are invalid)
#Input: String of words, where some words may contain a hashtag.

#Output: Array of strings that were prefixed with the hashtag, but do not contain the hashtag.


/\B#\w*[a-zA-Z]+\w*/ # the best Twitter hash tag regex in the world 
#http://erictarn.com/post/1060722347/the-best-twitter-hashtag-regular-expression

#my solution
def get_hashtags(post)
  array_of_words =  post.scan /\B#([a-zA-Z]+)(\s|$)/
  array_of_words.map{|item| item[0]}
end

Test.assert_equals(get_hashtags("hello #world"), ["world"])
Test.assert_equals(get_hashtags("# # # #"), [])
Test.assert_equals(get_hashtags("he#y m#ay"), [])
Test.assert_equals(get_hashtags("#blue#red#yellow#green"), [])

#clever but not mine
def get_hashtags(post)
  post.scan(/(?:\s|^)[#]+([a-zA-Z]+)(?=\s|$)/).flatten
end

#clever but not mine
def get_hashtags(post)
  post.scan(/(?<=\s|^)#+\w+(?=\s|$)/).map{|x| x.gsub(/#+/, '')}
end

