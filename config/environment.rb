require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'


i1 = Instructor.new('sally')

s1 = Student.new('sponge')

b1 = BoatingTest.new(i1, s1)


binding.pry

puts "itsnotworking"


