# Write your code here.
require "pry"

def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
end

def word_substituter(tweet)
   tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end
    
def bulk_tweet_shortener(tweet)
  tweet.collect do |array_tweet|
    puts word_substituter(array_tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140  
    word_substituter(tweet)
  else 
    tweet 
  end 
end 
     

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    trunc = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 
 