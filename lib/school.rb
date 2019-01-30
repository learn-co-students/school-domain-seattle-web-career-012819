# code here!
require 'pry'

class School
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    

    def add_student(student_name, grade)
        if roster[grade] == nil
            roster[grade] = [student_name] 
        else
            roster[grade] << student_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        names_hash = {}
        roster.each do |grade, students_array|
          names_hash[grade] = students_array.sort
        end
        names_hash
    end

end