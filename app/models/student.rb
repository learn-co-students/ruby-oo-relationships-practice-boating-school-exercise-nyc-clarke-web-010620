   require 'pry'

class Student
    attr_accessor :first_name 

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        

        @@all << self 

    end 

    def self.all
        @@all 
    end 

    def add_boating_test(student, boating_test_name, boating_test_status, instructor)
        BoatingTest.new(student, boating_test_name, boating_test_status, instructor)

    end 

    def find_student(first_name)
        self.all.select do |student|
        student.first_name = first_name
        end 

    end 

    def grade_percentage 
         testing = BoatingTest.all.select {|test| test.student == self}
         total_test = testing.count 
         passing_test = 0
         testing.each. do |test|
            if test.status == "passed" 
                passing_test += 1
            end 

        passing_test.to_f/total_test.to_f
    end 
end 



 







