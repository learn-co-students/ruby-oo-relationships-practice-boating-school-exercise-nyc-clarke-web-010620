require 'pry'
class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self

    end

    def boatingtest
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def students
        boatingtest.all.map do |test|
            test.instructor == self
        end
    end

    def self.all
        @@all
    end

    def add_boating_test
        BoatingTest.new("Don't Crash 101", "pending", puff)
    end

    def self.find_student
        
    end
end



binding.pry

