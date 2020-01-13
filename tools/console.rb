require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anthony = Student.new("Anthony")
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_pass = anthony.add_boating_test("Power Steering 201", "passed", krabs)
no_crashing = anthony.add_boating_test("Don't Crash 101", "failed", puff)
power_steering_pass = anthony.add_boating_test("Power Steering 202", "passed", puff)
power_steering_pass = spongebob.add_boating_test("Power Steering 201", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

