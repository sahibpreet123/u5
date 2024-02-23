# File: hello_world.rb

# Define a class named HelloWorld
class HelloWorld
  # Define a class method named 'hello'
  # Class methods are called on the class itself, not on instances of the class
  # This method takes an optional parameter 'name', with a default value of 'World'
  def self.hello(name = 'World')
    "Hello, #{name}!"  # Return a greeting message with the provided or default name
  end
end
