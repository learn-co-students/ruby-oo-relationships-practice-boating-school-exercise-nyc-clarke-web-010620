class Instructor
    attr_accessor :name 
    @@all = []
    
    def initialize (name)
    @name = name 
    @@all << self
    end 

    def self.all 
    @@all
    end 

    def pass_student(student, test_name)
            test = BoatingTest.find_test(student,test_name)
            if !test
            BoatingTest.new(student, test_name, "passed", self)    
            else  
            test.test_status = "passed"
            end 
    end

    def fail_student(student, test_name)
            test = BoatingTest.find_test(student,test_name)
            if !test
            BoatingTest.new(student, test_name, "failed", self)    
            else  
            test.test_status = "failed"
            end 
    end 
end
