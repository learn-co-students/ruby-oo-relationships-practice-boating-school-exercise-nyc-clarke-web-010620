class BoatingTest
    attr_accessor 
    attr_reader :instructor, :student 

    @@all = []
    
    def initialize(instructor, student)
        @instructor = instructor
        @student = student         
        # @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end
    
end
