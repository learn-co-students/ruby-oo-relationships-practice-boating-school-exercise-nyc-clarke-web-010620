require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'


i1 = Instructor.new('sally')
i2 = Instructor.new('instructor')
i3 = Instructor.new('puffer')

s1 = Student.new('sponge')
s2 = Student.new('bob')
s3 = Student.new('star')

b1 = BoatingTest.new(i1, s1, "driving", "pass")
b2 = BoatingTest.new(i3, s1, "boating")
b3 = BoatingTest.new(i1, s1, "big_boating", "fail")



# binding.pry

puts "itsnotworking"


