require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
i1 = Instructor.new("Billy")
s1 = Student.new("John")
b1 = BoatingTest.new(s1,"driving test","passed",i1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

