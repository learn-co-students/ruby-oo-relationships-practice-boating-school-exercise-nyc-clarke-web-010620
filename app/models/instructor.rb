class Instructor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
    end 
    
    def self.all
        @@all 
    end 

    def pass_student(student, test_name)

        test = BoatingTest.all.find{|bt| bt.student.name == student.name && bt.test_name == test_name}
        if test 
           test.status = "passed"
           test
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end 
    end 

    def fail_student(student, test_name)
        test = BoatingTest.all.find{|bt| bt.student.name == student.name && bt.test_name == test_name}
        if test 
           test.status == "failed"
           test
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end 
    end 

end
