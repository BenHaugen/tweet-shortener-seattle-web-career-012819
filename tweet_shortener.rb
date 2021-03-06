require "pry"
def dictionary
  {
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

def word_substituter(string)
  new_array = []
  array = string.split(" ")
  array.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_array << dictionary[word.downcase]
    else
      new_array << word
    end
  end
    new_array.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else 
    return tweet
  end
end 

def shortened_tweet_truncator(tweet)
  truncated_tweet = ""
  shorter_tweet = selective_tweet_shortener(tweet)
    if shorter_tweet.length > 140
      truncated_tweet = shorter_tweet[0..136] + "..." 
    else
      truncated_tweet = shorter_tweet
    end
  truncated_tweet
end

  
  
  
  
  
  
  
  
  
  
  
  
  