# Your code goes here!
class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(other_word)
      sort_chars(word) == sort_chars(other_word) && word.downcase != other_word.downcase
    end
  
    def sort_chars(word)
      word.downcase.chars.sort.join
    end
  end
  