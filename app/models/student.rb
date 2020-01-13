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
    
end
