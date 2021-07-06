require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Granit")
i1 = Instructor.new("Jack")
b1 = BoatingTest.new(s1,"driving",i1)
b1.status = "passed"
b2 = BoatingTest.new(s1,"drive",i1)
b2.status = "passed"
b3 = BoatingTest.new(s1,"what",i1)
b3.status = "failed"
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
