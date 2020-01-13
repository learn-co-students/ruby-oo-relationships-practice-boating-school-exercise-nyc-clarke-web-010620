class Student
    attr_reader :first_name 
    @@all = []
    
    def initialize (first_name) 
    @first_name = first_name    
    @@all << self 
    end 
    
    def add_boating_test (test_name,status,instructor)
    BoatingTest.new(self,test_name,status,instructor)
    end 

    def grade_percentage
    tests = BoatingTest.all.select{|test| test.student == self}
    passes = tests.select{|test| test.test_status == "passed"}
    passes.size/tests.size.to_f
    end 

    def self.find_student(first_name)
    @@all.select{|student| student.first_name == first_name}
    end 

    def self.all
    @@all
    end 

end
