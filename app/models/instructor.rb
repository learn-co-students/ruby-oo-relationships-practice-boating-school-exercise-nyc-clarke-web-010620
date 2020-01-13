class Instructor
    attr_accessor :boating_test_status
    attr_reader :student 
@@all = []

    def initialize(name)
        @name = name 

        @@all << self 
    end 

    def self.all
        @@all
    end 

    def pass_student(student, test_name)
        test = BoatingTest.all.find{|bt| bt.student.first_name == student.first_name && bt.boating_test_name == boating_test_name}
        if test
            test.boating_test_status = "passed"
            test
        else
            BoatingTest.new(student, boat_test_name, 'passed')
        end 

    end 

    def fail_student(student, boating_test_name, boating_test_status)
        test = BoatingTest.all.find{|bt| bt.student.first_name == student.first_name && bt.boating_test_name == boating_test_name}
        if test
            test.boating_test_status = "failed"
            test
        else
            BoatingTest.new(student, boat_test_name, 'failed')
        end
        
    end 

end
