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

    def add_boating_test(test_name,instructor)
        BoatingTest.new(self,test_name,instructor)
    end

    def self.find_student(first_name)
        @@all.find do |y|
            y.first_name == first_name
        end
    end

    def my_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        passed = self.my_tests.select {|test| test.status == "passed"}
        passed1 = passed.count.to_f
        total = self.my_tests.count.to_f
        passed1/total
    end

end


