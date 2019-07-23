require 'pry'

def dictionary

    {"hello" => 'hi',
    "to"=> '2',
    "two" => '2',
    "too" => '2',
    "for" => '4', 
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"}
end

def string_to_array (tweet)
    tweet.split (" ")
end

def word_substituter (tweet)
    word_array = string_to_array(tweet)
    count = 0
    while word_array[count]
        if dictionary.keys.include?(word_array[count].downcase)
            word_array[count] = dictionary[word_array[count].downcase]
        end
        count += 1
    end
    word_array.join(" ")
end

def bulk_tweet_shortener (array)
    array.map do|tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener (tweet)
        if tweet.length > 140
            word_substituter(tweet)
        else
            tweet
        end
end

def shortened_tweet_truncator (tweet)
    if tweet[141]
        tweet[0..136].concat("...")
    else
        tweet
    end
end

