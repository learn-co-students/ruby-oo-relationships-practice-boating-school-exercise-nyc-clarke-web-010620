class Student
    attr_accessor 
    attr_reader :first_name

    @@all = []
    
    def initialize(first_name )
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(instructor)
        BoatingTest.new(instructor, self)
    end

    def self.find_student(name)
        self.all.select{|student| student.name == name}
    end

    def boating_tests
        BoatingTest.all.select{|test| test.student == self}
    end

    def grade_percentage
        tests = self.boating_tests
        passing = tests.select {|test| test.grade == "pass"}

        (passing.length.to_f/tests.length.to_f)
    end

end
