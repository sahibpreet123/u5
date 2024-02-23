# Define a class named Year
class Year
  # Define a class method named 'leap?' to determine if a given year is a leap year
  def self.leap?(year)
    # Leap year logic:
    # If the year is divisible by 4 and not divisible by 100, or it is divisible by 400, it's a leap year
    if (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
      return true  # Return true if the conditions are met (leap year)
    else
      return false  # Return false if the conditions are not met (not a leap year)
    end
  end
end
