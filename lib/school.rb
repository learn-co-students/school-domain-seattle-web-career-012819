require 'pry'
class School
    attr_accessor :grade
    attr_reader :name, :roster
    
    def initialize(name)
        @name = name
        @@roster = {}
    end

    def roster
        @@roster
    end
    
    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        @@roster[grade] ||= []
        @@roster[grade] << student_name
    end

    def grade(grade)
        @@roster[grade]
    end

    def sort
        # @@roster = @@roster.sort.to_h
        sorted = {}
        @@roster.each {|grade, students|
            sorted[grade] = students.sort
        }
        sorted
        # binding.pry
    end
    
end

# binding.pry
# Thanks to Matt Brophy for help on #sort