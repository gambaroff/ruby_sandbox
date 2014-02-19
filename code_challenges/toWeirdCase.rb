#codewars
#Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, 
#and returns the same string with all even indexed characters in each word upper cased, 
#and all odd indexed characters in each word lower cased. 
#The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

#the passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

#Examples:

#Javascript/CoffeeScript:

#toWeirdCase( "String" );//=> returns "StRiNg"
#toWeirdCase( "Weird string case" );//=> returns "WeIrD StRiNg CaSe"
#Ruby:

#weirdcase( "String" )#=> returns "StRiNg"
#weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"


#My solution
def weirdcase string
new_string = ""
dncase=false
 string.each_char  do |char|
   if char == ' '
     new_string += ' '
     dncase=false
   elsif dncase
     new_string += char.downcase
     dncase = !dncase
   else 
     new_string += char.upcase
     dncase = !dncase
   end
 end  
 new_string
end

#tests
describe 'weirdcase' do
  it 'should return the correct value for a single word' do
    Test.assert_equals(weirdcase('This'), 'ThIs');
    Test.assert_equals(weirdcase('is'), 'Is');
  end
  it 'should return the correct value for multiple words' do
    Test.assert_equals(weirdcase('This is a test'), 'ThIs Is A TeSt');
  end
end


#clever but not mine
def weirdcase string
  string.gsub(/((\S)(\S)?)/) { $1.capitalize }
end
#clever but not mine
def weirdcase string
  string.split.collect { |word| word.chars.collect.with_index { |c, i| i.even? ? c.upcase : c.downcase }.join }.join(' ')
end
#clever but not me
def weirdcase string
  string.scan(/..? ?/).collect {|s| s.capitalize}.join
end


