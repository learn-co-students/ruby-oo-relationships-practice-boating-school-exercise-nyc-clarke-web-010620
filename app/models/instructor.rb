class Instructor

    attr_accessor :name

    @all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def boatingtest
        BoatingTest.all.select do |test|
            test.instructor == self
        end
    end

    def students
        boatingtest.all.map do |test|
            test.student == self
        end
    end

end
