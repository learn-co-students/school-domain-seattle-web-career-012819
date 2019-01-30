require "pry"

class School
    attr_reader :name, :roster

    def initialize(school)
    @school = school
    @roster = {}
    end

    def add_student(name, grade)

        self.roster[grade] = [] unless self.roster.include?(grade)
        self.roster[grade] << name
    end

    def grade(grade_level)
        self.roster[grade_level]
    end
    def sort
        hash = {}
        self.roster.each do |grade, students|
            hash[grade] = students.sort
        end
        hash
    end
end

