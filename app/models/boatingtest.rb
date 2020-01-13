class BoatingTest
    attr_accessor :name, :grade
    attr_reader :instructor, :student 

    @@all = []
    
    def initialize(instructor, student, name, grade = 'pending')
        @instructor = instructor
        @student = student         
        @grade = grade
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

end
