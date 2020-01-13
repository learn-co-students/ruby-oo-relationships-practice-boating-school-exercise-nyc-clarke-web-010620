class BoatingTest
    attr_accessor :student, :test_name, :instructor, :test_status
    @@all = []

    def initialize (student,test_name,test_status,instructor)
    @student = student
    @test_name = test_name
    @instructor = instructor
    @test_status = test_status


    @@all << self 
    end 

    def self.all
    @@all
    end 

    def self.find_test(student,test_name)
    tests = @@all.select{|test| test.test_name == test_name}.select{|test|test.student == student}
    tests.size == 0? nil:tests[0]     
    end 

end
