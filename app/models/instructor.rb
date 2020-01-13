class Instructor
    attr_accessor 
    attr_reader :name

    @@all = []

    def initialize(name )
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def tests
        BoatingTest.all.select{|test| test.instructor == self}
    end

    def students
        tests.map{|test| test.student}
    end

    def pass_student(student, test_name)
        if tests.any? {|test| test.student == student && test.name == test_name}
            student_tests = tests.select{|test| test.student == student && test.name == test_name}
            return student_tests.map{|test| test.grade = "pass"}
        else
            return BoatingTest.new(self, student, test_name, "pass")
        end
    end

    def fail_student(student, test_name)
        if tests.any? {|test| test.student == student && test.name == test_name}
        student_tests = tests.select{|test| test.student == student && test.name == test_name}
        return student_tests.map{|test| test.grade = "fail"}
    else
        return BoatingTest.new(self, student, test_name, "fail")
    end
    end

end
