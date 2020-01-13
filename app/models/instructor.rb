class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        BoatingTest.all.each do |y|
            if y.student == student && y.test_name == test_name
                y.status=("passed")
            else 
            BoatingTest.new(student,test_name,self)
            y.status=("passed")
            end
        end
    end

    def fail_student(student,test_name)
        BoatingTest.all.each do |y|
            if y.student == student && y.test_name == test_name
                y.status=("failed")
            else 
                BoatingTest.new(student,test_name,self)
                y.status=("failed")
            end
        end
    end


end
   
