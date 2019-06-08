# Write your code here.
require 

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
  tweet.split(" ").collect do |array_tweet|
    if array_tweet.length > 140
      word_substituter(array_tweet)
    elsif array_tweet.length <= 140
      array_tweet
    end
  end
end
     
def shortened_tweet_truncator(tweet)
  tweet.split(" ").collect do |array_tweet|
    binding.pry
    if array_tweet.length > 140
      array_tweet[0..140] + "..."
    else
      array_tweet
    end
  end.join(" ")
end

 