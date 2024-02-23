# Define a class named HelloWorld
class HelloWorld
  # Constructor method that initializes an instance of the class with a name parameter
  def initialize(name)
    @name = name  # Instance variable to store the name
  end

  # Method to generate a greeting message
  # It takes an optional parameter 'greeted_name', default value is set to 'World'
  def hello(greeted_name = 'World')
    "Hello, #{greeted_name}. My name is #{@name}!"
  end
end
