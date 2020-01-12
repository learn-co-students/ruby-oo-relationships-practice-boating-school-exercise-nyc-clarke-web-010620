class Student

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name 

        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def self.find_student(name)
        @@all.select{|student| student.name == self.name}
    end 

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self,test_name, status, instructor)
    end 

    def grade_percentage
        my_tests = BoatingTest.all.select{|test| test.student == self}
        total_tests = my_tests.count 
        passed_tests = 0 
        my_tests.each do |test|
            if test.status == "passed"
                passed_tests += 1 
            end 
        end 
        (passed_tests.to_f/total_tests.to_f)
    end 
    

end 
