class BoatingTest

     attr_accessor :studet, :name, :boating_test, :instructor

     @@all = []

    def initialize(student, name, boating_test, instructor)
        @student = student
        @name = name
        @boating_test = boating_test
        @instructor = instructor

        @@all << self

    end

    def self.all
        @@all
    end


end
