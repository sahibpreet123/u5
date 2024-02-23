# Require the 'set' library, which provides a set data structure
require 'set'

# Define a class named Pangram
class Pangram
  # Define a class method named 'is_pangram?' to check if a sentence is a pangram
  def self.is_pangram?(sentence)
    # Clean the sentence by converting it to lowercase and removing non-alphabetic characters
    cleaned_sentence = sentence.downcase.gsub(/[^a-z]/, '')

    # Create a set containing all the letters of the alphabet
    alphabet_set = ('a'..'z').to_set

    # Create a set from the cleaned sentence's characters
    sentence_set = Set.new(cleaned_sentence.chars)

    # Check if the sets are equal, indicating that all letters of the alphabet are present in the sentence
    alphabet_set == sentence_set
  end
end
