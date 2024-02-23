# Define a class named Grains
class Grains
  # Define a class method named 'square' to calculate the number of grains on a specific square of a chessboard
  def self.square(number)
    # Raise an ArgumentError if the given number is not within the valid range (1 to 64)
    raise ArgumentError, 'Number must be between 1 and 64' unless (1..64).cover?(number)

    # Calculate the number of grains on the specified square using the formula 2^(number - 1)
    2**(number - 1)
  end

  # Define a class method named 'total' to calculate the total number of grains on the entire chessboard
  def self.total
    # Sum the number of grains on each square using the 'square' method for each square from 1 to 64
    (1..64).sum { |n| square(n) }
  end
end
